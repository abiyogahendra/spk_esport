<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\DataTalentValidation;
use App\Rules\ExcelRule;
use App\Imports\TalentImport;
use Maatwebsite\Excel\Facades\Excel;
use Validator;
use Auth;
use DB;
use File;



class DataTalentController extends Controller
{
    //
    function IndexPageTalent(Request $request){

        return view('page.data-talent');
    }

    function DataTableTalent(){
        $data_d = DB::table('talent_survey')
            ->get();

        $i = 0;
        $data = [];
        foreach($data_d as $q){
            $data[$i] = [
                $q->id_talent,
                $q->player_experience,
                $q->skill,
                $q->intellegence,
                $q->attitude,
                $q->turnamen,
                $q->target,
            ];
            $i++;
        }
        return response($data);
    }

    function PostDataTalent(DataTalentValidation $request){
        $exist = DB::table('talent_survey')
                ->count();
        
        if($exist == 0 ){
            $file = $request->file('data_talent');

            Excel::import(new TalentImport, $file);

            return response()->json([
                'code' => 200,
            ]);
        }else{
            return response()->json([
                'code' => 300,
            ]); 
        }
        
        
        
      
    }

    function DeleteAllDataTalent(){
        $data = DB::table('talent_survey')
            ->count();
    
        if($data != 0){
            DB::table('talent_survey')
                ->delete();

            return response()->json([
                'code' => 200
            ]);
        }else{
            return response()->json([
                'code' => 300
            ]);
        }
       
        
    }
}
