<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\DataUjiValidation;
use App\Rules\ExcelRule;
use App\Imports\DataUjiImport;
use Maatwebsite\Excel\Facades\Excel;
use Validator;
use Auth;
use DB;
use File;



class DataUjiController extends Controller
{
    //
    function IndexDataUji(Request $request){
        // dd('dsd');
        return view('page.data-uji');
    }

    function DataTableDataUji(){
        $data_d = DB::table('data_uji')
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

    function PostDataUji(DataUjiValidation $request){
        $exist = DB::table('data_uji')
                ->count();
        
        if($exist == 0 ){
            $file = $request->file('data_uji');

            Excel::import(new DataUjiImport, $file);

            return response()->json([
                'code' => 200,
            ]);
        }else{
            return response()->json([
                'code' => 300,
            ]); 
        }
        
        
        
      
    }

    function DeleteAllDataUji(){
        $data = DB::table('data_uji')
            ->count();
    
        if($data != 0){
            DB::table('data_uji')
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
    
    function MiningDataUji(){
        
        $check_rule = DB::table('rule')
            ->count();
        $check_data_uji = DB::table('data_uji')
            ->count();

        if($check_rule != 0 && $check_data_uji != 0){
            $rule = DB::table('rule')
                ->select([
                    'pohon_keputusan',
                    'keputusan'
                ])
                ->get();
            // dd($rule);
            $r1 = [];
            foreach($rule as $a){
                $r1 = explode('AND', $a->pohon_keputusan);
                // dd($r1);
                $uji = DB::table('data_uji')
                        ->select([
                            'id_talent',
                            'target'
                        ])
                        ->where(function ($query) use ($r1) {
                                    foreach ($r1 as $i=>$a) {
                                        $z[$i] = explode('=', $a);
                                        foreach ($z as $q) {
                                             $query->where($q[0],$q[1]);
                                        }
                                    }
                                })
                        ->get();
                foreach($uji as $update){
                    DB::table('data_uji')
                        ->where('id_talent',$update->id_talent)
                        ->update([
                            'target'    => $a->keputusan
                        ]);
                }
            }
            return response()->json([
                'code'  => 200
            ]);
        }else{
            return response()->json([
                'code'  => 300
            ]);
        }
    }
}
