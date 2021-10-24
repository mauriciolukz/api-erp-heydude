<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GeneriController extends Controller
{
    public function getNextNoteIndex(){
        
        $nextNoteIndex = DB::select('CALL smGetNextNoteIndex (?,?,?,?);',array(1,1,'@param3','@param4'));
        //SQL
        //$nextNoteIndex = \DB::select(\DB::raw("BEGIN DECLARE @stored_proc_name char(31) DECLARE @retstat int DECLARE @param3 numeric(19,5) DECLARE @param4 int set nocount on SELECT @stored_proc_name = 'DYNAMICS.dbo.smGetNextNoteIndex' EXEC @retstat = @stored_proc_name 1, 1, @param3 OUT, @param4 OUT SELECT @retstat as retstat, @param3 as param3, @param4 as param4 set nocount on END"));
        

        if ($nextNoteIndex) {
            return response()->json($nextNoteIndex, 200);
        }
    }
}
