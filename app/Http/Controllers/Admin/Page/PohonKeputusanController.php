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

    function HitungAkurasiRule(){
        $training_diterima  = DB::table('talent_survey')
            ->where('target', 'diterima')
            ->get();
        $training_tidak  = DB::table('talent_survey')
            ->where('target', 'tidak diterima')
            ->get();
        $total = count($training_diterima) + count($training_tidak);
        $uji = DB::table('data_uji')
            ->get();


        $true_diterima = 0;
        $false_diterima = 0;
        $true_tidak = 0;
        $false_tidak = 0;
        $error = 0;
        // dd($training);   
        foreach($training_diterima as $q){
            // dd($training_diterima->target);
            $uji = DB::table('data_uji')
                ->where('id_talent', $q->id_talent)
                ->get();
           
            if($uji[0]->target == "Diterima"){
                $true_diterima = $true_diterima + 1;
            }else {
                $false_diterima = $false_diterima + 1;
            }
        }
        foreach($training_tidak as $q){
            $uji = DB::table('data_uji')
                ->where('id_talent', $q->id_talent)
                ->get();
            if($uji[0]->target == "tidak diterima"){
                $true_tidak = $true_tidak + 1;
            }else {
                $false_tidak = $false_tidak + 1;
            }
        }
        
        // mencari nilai akurasi 
        $tp_tn = $true_diterima + $true_tidak;
        $akurasi = $tp_tn / $total;
        // dd($akurasi);
        // menghitung presisi
        $fp_tp = $false_diterima + $true_diterima;
        $presisi = $true_diterima / $fp_tp;
        
        $fn_tp = $false_tidak + $true_diterima;
        $recall = $true_diterima / $fn_tp;
        
        return view('modal.modal-akurasi', compact('akurasi','presisi','recall'));
    }
}
