<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
Use DB;

class PohonKeputusanController extends Controller{
    //
    function IndexPagePohonKeputusan(Request $request){

        return view('page.pohon-keputusan');
    }

    function DataTableRule(Request $request){
        $rule = DB::table('rule')
            ->select([
                'id_rule',
                'pohon_keputusan',
                'keputusan',
            ])
            ->get();

        $i = 0;
        $data = [];
        foreach($rule as $q){
            $data[$i] = [
                $q->id_rule,
                $q->pohon_keputusan,
                $q->keputusan,
            ];
            $i++;
        }
        return response($data);
    }

    function DeletedAllRule(){
        // check apakah data rule kosong atau tidak
        $check = DB::table('rule')
            ->count();
        if($check != 0 ){
            DB::table('rule')
                ->truncate();
            return response()->json([
                'code' =>200
            ]);
        }else{
            return response()->json([
                'code'  => 500
            ]);
        }
    }

    function CheckDataUji(){
        $check = DB::table('data_uji')
            ->count();
        
        if($check > 0){
            return response()->json([
                'code'  => 200
            ]);
        }else{
            return response()->json([
                'code'  => 500
            ]);
        }
    }
    function HitungAkurasiRule(){
        $uji_diterima = DB::table('data_uji')
            ->where('target','diterima')
            ->get();

        $uji_tidak  = DB::table('data_uji')
            ->where('target', 'tidak diterima')
            ->get();
        $total = count($uji_diterima) + count($uji_tidak);

        $true_diterima = 0;
        $false_diterima = 0;
        $true_tidak = 0;
        $false_tidak = 0;
        $error = 0;
        // dd($training);   
        foreach($uji_diterima as $q){
            // dd($q->target);
            $training_diterima = DB::table('talent_survey')
                ->where('id_talent', $q->id_talent)
                ->get();
            
            if($training_diterima[0]->target == "Diterima" || $training_diterima[0]->target == "diterima" ){
                $true_diterima = $true_diterima + 1;
            }else{
                $false_tidak = $false_tidak + 1;
            }
            // dd($true_diterima);
        }
        foreach($uji_tidak as $q){
            $training_tidak = DB::table('talent_survey')
                ->where('id_talent', $q->id_talent)
                ->get();
            if($training_tidak[0]->target == "Tidak Diterima" || $training_tidak[0]->target == "tidak diterima" || $training_tidak[0]->target == "Tidak diterima" || $training_tidak[0]->target == "tidak Diterima"){
                $true_tidak = $true_tidak + 1;
            }else {
                $false_diterima = $false_diterima + 1;
            }
        }
        // dd($true_diterima + $true_tidak + $false_diterima + $false_tidak);
        // mencari nilai akurasi 
        $tp_tn = $true_diterima + $true_tidak;
        $akurasi = $tp_tn / $total;
        $akurasi = $akurasi * 100;
        // dd($akurasi);
        // menghitung presisi
        $fp_tp = $false_diterima + $true_diterima;
        $presisi = $true_diterima / $fp_tp;
        $presisi = $presisi * 100;
        
        $fn_tp = $false_tidak + $true_diterima;
        $recall = $true_diterima / $fn_tp;
        $recall = $recall * 100;
        
        return view('modal.modal-akurasi', compact('akurasi','presisi','recall'));
    }
}
