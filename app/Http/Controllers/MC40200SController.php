<?php

namespace App\Http\Controllers;

use App\Models\MC40200S;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MC40200SController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MC40200S  $mC40200S
     * @return \Illuminate\Http\Response
     */
    public function show(MC40200S $mC40200S)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MC40200S  $mC40200S
     * @return \Illuminate\Http\Response
     */
    public function edit(MC40200S $mC40200S)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MC40200S  $mC40200S
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MC40200S $mC40200S)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MC40200S  $mC40200S
     * @return \Illuminate\Http\Response
     */
    public function destroy(MC40200S $mC40200S)
    {
        //
    }

    public function getCurrencyById(Request $request,$id){
        //$MC40200 = \DB::select(\DB::raw("exec DYNAMICS.dbo.zDP_MC40200SS_1 '".$id."'"));
        $MC40200 = MC40200S::where('CURNCYID', $id)->first();

        if (!$MC40200) {
            return response()->json(['success'=>false, 'message' => 'Moneda no registrada, por favor verifique.'], 200);
        }
        return response()->json($MC40200, 200);
    }

    public function addCurrency(Request $request){
        
        $curncyid = $request->curncyidText;
        $crncydsc = $request->crncydsc; 
        $crncysym = $request->crncysym; 
        $cysymplc = $request->cysymplc;
        $inclspac = json_decode($request->inclspacStatus) ? 1 : 0;
        $decsymbl = $request->decsymblIndex; 
        $decplcur = $request->decplcurIndex;
        $thoussym = $request->thoussymIndex;
        $isocurrc = $request->isocurrc;
        $noteindx = $request->noteindx;

        $maxValue = (MC40200S::max('CURRNIDX') == null) ? 1000 : MC40200S::max('CURRNIDX') + 1;
        
        $affected = DB::insert('CALL zDP_MC40200SI (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',array($curncyid,$maxValue, $noteindx, $crncydsc, $crncysym, 0, 1, 1, $cysymplc, $inclspac, 1, 0, 0, $decsymbl, $decplcur, $thoussym, 'Dólares', 'Centavos', 'Y', $isocurrc,0,'@outparam'));
        //SQL
        //$affected = DB::insert("BEGIN DECLARE @num int EXEC DYNAMICS.dbo.zDP_MC40200SI '${curncyid}', ${maxValue}, ${noteindx}, '${crncydsc}', '${crncysym}', 0, 1, 1, ${cysymplc}, ${inclspac}, 1, 0, 0, ${decsymbl}, ${decplcur}, ${thoussym}, 'Dólares', 'Centavos', 'Y', '${isocurrc}', 0, @num OUT SELECT @num END ");
        
        
        if ($affected) {
            return response()->json(['success'=>true, 'message' => 'Moneda registrada.'], 201);
        }

    }

    public function updateCurrency(Request $request,$id){
        
        $curncyid = $request->curncyidText;
        $crncydsc = $request->crncydsc; 
        $crncysym = $request->crncysym; 
        $cysymplc = $request->cysymplc;
        $inclspac = json_decode($request->inclspacStatus) ? 1 : 0;
        $decsymbl = $request->decsymblIndex; 
        $decplcur = $request->decplcurIndex; 
        $thoussym  = $request->thoussymIndex;
        $isocurrc = $request->isocurrc;
        
        $affected = DB::table('MC40200')
              ->where('CURNCYID', $curncyid)
              ->update(array(
                    'CRNCYDSC'=> $crncydsc,
                    'CRNCYSYM'=> $crncysym,
                    'CYSYMPLC'=> $cysymplc,
                    'INCLSPAC'=> $inclspac,
                    'DECSYMBL'=> $decsymbl,
                    'DECPLCUR'=> $decplcur,
                    'THOUSSYM'=> $thoussym,
                    'ISOCURRC'=> $isocurrc
                    )
                );

        if ($affected) {
            return response()->json(['success'=>true, 'message' => 'Cambio de moneda registrada.'], 201);
        }
        
    }

    public function deleteCurrency($id){
        
        //$affectedRows = MC40200::where('CURNCYID', '=', $id)->delete();
        $affectedRows = MC40200S::where('CURNCYID', $id)->delete();
        
        if ($affectedRows) {
            return response()->json(['success'=>true, 'message' => 'Moneda eliminada.'], 202);
        }
        
    }

    public function getCurrencyAllByLimit($init,$limit){

        $MC40200 = MC40200S::skip($init)->take($limit)->get();

        if (!$MC40200) { 
            return response()->json(['success'=>false, 'message' => 'Moneda no registrada, por favor verifique.'], 404);
        }
        return response()->json($MC40200, 200);
    }
}
