<?php

namespace App\Http\Controllers;

use App\Models\SY01400S;
use Illuminate\Http\Request;
use App\Http\Requests\LoginRequest;

class SY01400SController extends Controller
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
     * @param  \App\Models\SY01400S  $sY01400S
     * @return \Illuminate\Http\Response
     */
    public function show(SY01400S $sY01400S)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SY01400S  $sY01400S
     * @return \Illuminate\Http\Response
     */
    public function edit(SY01400S $sY01400S)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\SY01400S  $sY01400S
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SY01400S $sY01400S)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SY01400S  $sY01400S
     * @return \Illuminate\Http\Response
     */
    public function destroy(SY01400S $sY01400S)
    {
        //
    }

    public function login(LoginRequest $request)
    {
        
        /* $request->validated();
    
        $creds = $request->only('email', 'password');
        
        if (!$token = auth()->attempt(['USERID' => $request->email, 'password' => $request->password])) {
            return response()->json(['success'=>false, 'message' => 'Usuario no registrado, por favor verifique.'], 404);
        }

        return response()->json([
            'success' => true,
            'SY01400' => auth()->user(),
            'token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60
        ], 200); */

    }

    public function me()
    {
        return response()->json(auth()->user());
    }

    public function menu_side(){
        $array = array("menu_side"=>
            array(
                    array(
                    "item_id"=>1,
                    "item_icon"=>"<Home />",
                    "item_name"=>"Inicio",
                    "sub_items"=>
                        array(
                            array(
                            "sub_item_id" => 1,
                            "item_icon" => "<Home />",
                            "item_name" => "Sub"
                            ),
                            array(
                            "sub_item_id" => 2,
                            "item_icon" => "<Home />",
                            "item_name" => "Sub"
                            )
                        )
                    ),
                    array(
                        "item_id"=>2,
                        "item_icon"=>"<Money />",
                        "item_name"=>"Ventas",
                        "sub_items"=>
                            array(
                                array(
                                "sub_item_id" => 1,
                                "item_icon" => "<Home />",
                                "item_name" => "Sub"
                                ),
                                array(
                                "sub_item_id" => 2,
                                "item_icon" => "<Home />",
                                "item_name" => "Sub"
                                )
                            )
                    ),
                    array(
                        "item_id"=>3,
                        "item_icon"=>"<ShoppingCart />",
                        "item_name"=>"Compras",
                        "sub_items"=>
                            array(
                                array(
                                "sub_item_id" => 1,
                                "item_icon" => "<Home />",
                                "item_name" => "Sub"
                                ),
                                array(
                                "sub_item_id" => 2,
                                "item_icon" => "<Home />",
                                "item_name" => "Sub"
                                )
                            )
                    ),
                    array(
                        "item_id"=>4,
                        "item_icon"=>"<AllInbox />",
                        "item_name"=>"Inventario",
                        "sub_items"=>
                            array(
                                array(
                                "sub_item_id" => 1,
                                "item_icon" => "<Home />",
                                "item_name" => "Sub"
                                ),
                                array(
                                "sub_item_id" => 2,
                                "item_icon" => "<Home />",
                                "item_name" => "Sub"
                                )
                            )
                    ),
                    array(
                        "item_id"=>5,
                        "item_icon"=>"<SettingsApplications />",
                        "item_name"=>"Administración",
                        "sub_items"=>
                            array(
                                array(
                                "sub_item_id" => 1,
                                "item_icon" => "<Home />",
                                "item_name" => "Sub"
                                ),
                                array(
                                "sub_item_id" => 2,
                                "item_icon" => "<Home />",
                                "item_name" => "Sub"
                                )
                            )
                    )
                )
        ); 
        return response()->json($array);
    }

    public function cards(Request $request){
        $array = null;
        $id_card = $request->id_card;
        
        switch ($id_card) {
            case '4':
                $array = array("cards"=>
                    array(
                        array(
                        "card_id"=>$id_card,
                        "card_icon"=>"<FolderOpen />",
                        "card_name"=>"Tarjetas",
                        "card_items"=>
                            array(
                                array(
                                    "sub_item_id" => 1,
                                    "item_icon" => "<Home />",
                                    "item_name" => "Articulo"
                                ),
                                array(
                                    "sub_item_id" => 2,
                                    "item_icon" => "<Home />",
                                    "item_name" => "Sitio"
                                ),
                                    array(
                                    "sub_item_id" => 3,
                                    "item_icon" => "<Home />",
                                    "item_name" => "Proveedores"
                                ),
                                array(
                                    "sub_item_id" => 4,
                                    "item_icon" => "<Home />",
                                    "item_name" => "Moneda de articulo"
                                )
                            )
                        )
                    )
            );
            break;
            case '5':
                $array = array("cards"=> //1
                    array( //2
                        //////
                        array(
                            "card_id"=>1,
                            "card_icon"=>"<Settings />",
                            "card_name"=>"Configuración",
                            "card_items"=>
                            array(
                                array(
                                    "sub_item_id" => 1,
                                    "item_icon" => "<Home />",
                                    "item_name" => "Moneda",
                                    "component_name" => "<Currency/>",
                                    "component_title" => "Configuracion de moneda"
                                ),
                                array(
                                    "sub_item_id" => 2,
                                    "item_icon" => "<Home />",
                                    "item_name" => "Acceso Multimoneda",
                                    "component_name" => "<MultiCurrencyAccess/>",
                                    "component_title" => "Configuracion de acceso multimoneda"
                                )
                            )
                        ),
                        ///////
                        array(
                            "card_id"=>2,
                            "card_icon"=>"<Settings />",
                            "card_name"=>"Configuraciónn",
                            "card_items"=>
                            array(
                                array(
                                    "sub_item_id" => 1,
                                    "item_icon" => "<Home />",
                                    "item_name" => "Monedaa",
                                    "component_name" => "Currencyy",
                                    "component_title" => "Configuracion de monedaa"
                                ),
                                array(
                                    "sub_item_id" => 2,
                                    "item_icon" => "<Home />",
                                    "item_name" => "Pruebaa",
                                    "component_name" => "Pruebaa",
                                    "component_title" => "Configuracion de pruebaa"
                                )
                            )
                        )

                    )//2
                );//1
            break;
        }
        return response()->json($array);
    }
}
