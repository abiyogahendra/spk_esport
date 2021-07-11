<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use DB;
class PrediksiC4Controller extends Controller
{
    //
    function IndexPagePrediksiC4(Request $request){

        return view('page.prediksi-c4');
    }
    function CheckRule(){
        $check = DB::table('rule')
            ->get();
        if(count($check) != 0){
            return response()->json([
                'code'  => 200,
            ]);
        }else{
            return response()->json([
                'code'  => 500
            ]);
        }
    }

    function PerhitunganPrediksi(Request $request){
        
        DB::table('prediksi')->truncate();

        $id_talent = DB::table('prediksi')
            ->insertGetId([
                'id_talent'             => $request->id_talent,         
                'player_experience'     => $request->player_experience,        
                'skill'                 => $request->skill,
                'intellegence'          => $request->intellegence, 
                'attitude'              => $request->attitude,
                'turnamen'              => $request->turnament,
            ]);

            $rule = DB::table('rule')
                ->select([
                    'pohon_keputusan',
                    'keputusan'
                ])
                ->get();
            $r1 = [];
            foreach($rule as $a){
                $r1 = explode('AND', $a->pohon_keputusan);
                $uji = DB::table('prediksi')
                        ->select([
                            'id_talent',
                            'target'
                        ])
                        ->where('id_prediksi',$id_talent)
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
                    DB::table('prediksi')
                        ->where('id_talent',$update->id_talent)
                        ->update([
                            'target'    => $a->keputusan
                        ]);
                }
            }
            
            $hasil = DB::table('prediksi')
                ->where('id_prediksi', $id_talent)
                ->select('target')
                ->first();
            // dd($hasil);
            $hasil_final = $hasil->target;
            
            return view('modal.modal-prediksi', compact('hasil_final'));
         
    }
}
