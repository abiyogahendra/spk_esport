<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use DB;
class DataMiningController extends Controller
{
    //
    function IndexPageMining(Request $request){
        return view('page.data-mining');
    }
    function format_decimal($value){
        return round($value, 3);
    }
    function Attribut(){
        $node_att = [
            'player_experience',
            'skill',
            'intellegence',
            'attitude',
            'turnamen',
        ];
        return $node_att;
    }
    function Attribut_active($att){

    }
    function Hitung_Entropy($total, $nilai1, $nilai2){
        $total = $nilai1 + $nilai2;

        $atribut1 = ((-$nilai1 / $total) * (log(($nilai1 / $total), 2)));
        $atribut2 = ((-$nilai2 / $total) * (log(($nilai2 / $total), 2)));
        
        $atribut1 = is_nan($atribut1)?0:$atribut1;
        $atribut2 = is_nan($atribut2)?0:$atribut2;
        
        $entropy = $atribut1 + $atribut2 ;

        $entropy = $this->format_decimal($entropy);
        // dd($entropy);
        return $entropy;
    }
    function Hitung_gain($lolos_diterima, $lolos_ditolak, $tidak_diterima, $tidak_ditolak, $entropy_lolos, $entropy_tidak, $entropy_induk){
        $jml_lolos = $lolos_diterima + $lolos_ditolak;
        $jml_tidak = $tidak_diterima + $tidak_ditolak;

        $total = $jml_lolos + $jml_tidak;
        $gain = $entropy_induk - ((($jml_lolos / $total) * $entropy_lolos) - (($jml_tidak / $total) * $entropy_tidak));
        return $gain;
    }
    function Hitung_attribute($attribute, $entropy_induk, $parent){
        
        if($parent == ''){
            // menghitung attribute lolos 
                $lolos = DB::table('talent_survey')
                    ->select([
                        $attribute,
                        'target',
                    ])
                    ->where($attribute,'lolos')
                    ->get();
                $lolos_diterima = 0;
                $lolos_ditolak = 0;
                // dd($lolos);
                foreach ($lolos as $a) {
                    if($a->target == 'Diterima'){
                        $lolos_diterima = $lolos_diterima + 1;
                    }else if($a->target == 'Tidak Diterima'){
                        $lolos_ditolak = $lolos_ditolak + 1;
                    }
                } 

                $total = count($lolos);
                // dd($total);
                $entropy_lolos = $this->Hitung_Entropy($total, $lolos_diterima, $lolos_ditolak);
            // menghitung atribute tidak
                $tidak = DB::table('talent_survey')
                    ->select([
                        $attribute,
                        'target',
                    ])
                    ->where($attribute,'tidak')
                    ->get();
                $tidak_diterima = 0;
                $tidak_ditolak = 0;
                // dd($tidak_ditolak);
                foreach ($tidak as $a) {
                    if($a->target == 'Diterima' || $a->target == 'diterima' || $a->target == 'di terima'){
                        $tidak_diterima = $tidak_diterima + 1;
                    }else if($a->target == 'Tidak Diterima' || $a->target == 'tidak diterima' || $a->target == 'tidak Diterima' || $a->target == 'Tidak diterima'){
                        $tidak_ditolak = $tidak_ditolak + 1;
                    }
                }     
                // dd($tidak_diterima);   
                $total = count($tidak);
                $entropy_tidak = $this->Hitung_Entropy($total, $tidak_diterima, $tidak_ditolak);
                // dd($entropy_tidak);

            // hitung gain attribut   
                $hitung_gain = $this->Hitung_gain($lolos_diterima, $lolos_ditolak, $tidak_diterima, $tidak_ditolak, $entropy_lolos, $entropy_tidak, $entropy_induk);
                // dd($hitung_gain);
                $insert_entropy_gain = $this->Insert_entropy_DB($attribute, $entropy_lolos, $entropy_tidak, $hitung_gain);
                
                $data = [
                    $entropy_lolos,
                    $entropy_tidak,
                    $hitung_gain
                ];

        }else if(preg_match("/AND/i", $parent)){
            $d = explode('AND', $parent);
            dd($d);
        }else{
            $d = explode('=', $parent);
            
            $lolos = DB::table('talent_survey')
                ->select([
                    $attribute,
                    'target',
                ])
                ->where($attribute,'lolos')
                ->where($d[0],$d[1])
                ->get();
            // dd($lolos);

            $lolos_diterima = 0;
            $lolos_ditolak = 0;
            foreach ($lolos as $a) {
                if($a->target == 'Diterima'){
                    $lolos_diterima = $lolos_diterima + 1;
                }else if($a->target == 'Tidak Diterima'){
                    $lolos_ditolak = $lolos_ditolak + 1;
                }
            }        
            $total = count($lolos);
            $entropy_lolos = $this->Hitung_Entropy($total, $lolos_diterima, $lolos_ditolak);

            $tidak = DB::table('talent_survey')
                ->select([
                    $attribute,
                    'target',
                ])
                ->where($attribute,'tidak')
                ->where($d[0],$d[1])
                ->get();
            $tidak_diterima = 0;
            $tidak_ditolak = 0;
            foreach ($tidak as $a) {
                if($a->target == 'Diterima'){
                    $tidak_diterima = $tidak_diterima + 1;
                }else if($a->target == 'Tidak Diterima'){
                    $tidak_ditolak = $tidak_ditolak + 1;
                }
            }        
            $total = count($tidak);
            $entropy_tidak = $this->Hitung_Entropy($total, $tidak_diterima, $tidak_ditolak);

            // hitung gain attribut   
            $hitung_gain = $this->Hitung_gain($lolos_diterima, $lolos_ditolak, $tidak_diterima, $tidak_ditolak, $entropy_lolos, $entropy_tidak, $entropy_induk);
            
            $insert_entropy_gain = $this->Insert_entropy_DB($attribute, $entropy_lolos, $entropy_tidak, $hitung_gain);

            $data = [
                 $entropy_lolos,
                 $entropy_tidak,
                 $hitung_gain
            ];

        }
        return $data;

    }
    function Insert_Hitung($gain_exp, $gain_skill, $gain_atti, $gain_inte, $gain_turn){
        $id_perhitungan = DB::table('perhitungan')
            ->insertGetId([
                'gain_experience'       => $gain_exp,
                'gain_skill'            => $gain_skill,
                'gain_intellegence'     => $gain_inte,
                'gain_attitude'         => $gain_atti,
                'gain_turnamen'         => $gain_turn,
            ]);

        return $id_perhitungan;
    }
    function Insert_entropy_DB($attribute, $lolos, $tidak, $gain){
        // DB::table($attribute)->truncate();
        
        $id_insert = DB::table($attribute)
            ->insertGetId([
                'lolos'    => $lolos,
                'tidak'    => $tidak,
                'gain'     => $gain
            ]);

       return $gain;
    }
    function Insert_Role($kondisi){
        DB::table('rule')
            ->insert([
                'pohon_keputusan'   => $kondisi['parent'],
                'keputusan'         => $kondisi['target']
            ]);
    }
    function Perhitungan_pertama(){
        // Menghitung entropy seluruh data
        
            $total_diterima = DB::table('talent_survey')
                ->where('target', 'like', 'diterima')
                ->count();
            $total_ditolak = DB::table('talent_survey')
                ->where('target', 'like', 'tidak diterima')
                ->count();
                
            $total_data = $total_diterima + $total_ditolak;
            // dd($total_data);
            $entropy_total = $this->Hitung_Entropy($total_data, $total_diterima, $total_ditolak);
            // dd($entropy_total);
       $kondisi = '';
        // Hitung entropy dan gain tiap atribut
            $gain_exp = $this->Hitung_attribute('player_experience', $entropy_total, $kondisi);
            $gain_skill = $this->Hitung_attribute('skill', $entropy_total, $kondisi);
            $gain_atti = $this->Hitung_attribute('attitude', $entropy_total, $kondisi);
            $gain_inte = $this->Hitung_attribute('intellegence', $entropy_total, $kondisi);
            $gain_turn = $this->Hitung_attribute('turnamen', $entropy_total, $kondisi);
            // dd($gain_exp);
        DB::table('perhitungan')->truncate();

        $id_perhitungan_pertama = $this->Insert_Hitung($gain_exp[2], $gain_skill[2], $gain_atti[2], $gain_inte[2], $gain_turn[2]);
        // dd($id_perhitungan_pertama);
        $g = DB::table('perhitungan')
            ->orderBy('id_rasio', 'desc')
            ->first();

            if($g->gain_experience >  $g->gain_skill && $g->gain_experience > $g->gain_intellegence && $g->gain_experience > $g->gain_attitude && $g->gain_experience > $g->gain_turnamen){
                $poin = [
                    'poin'      => 'experience',
                    'lolos'     => $gain_exp[0],
                    'tidak'     => $gain_exp[1],
                    'gain'      => $gain_exp[2],
                 ];
            }else if($g->gain_skill > $g->gain_experience && $g->gain_skill > $g->gain_intellegence && $g->gain_skill > $g->gain_attitude && $g->gain_skill > $g->gain_turnamen){
                $poin = [
                    'poin'      => 'skill',
                    'lolos'     => $gain_skill[0],
                    'tidak'     => $gain_skill[1],
                    'gain'      => $gain_skill[2],
                 ];
            }else if($g->gain_intellegence > $g->gain_experience && $g->gain_intellegence > $g->gain_skill && $g->gain_intellegence > $g->gain_attitude && $g->gain_intellegence > $g->gain_turnamen){
                $poin = [
                    'poin'      => 'intellegence',
                    'lolos'     => $gain_inte[0],
                    'tidak'     => $gain_inte[1],
                    'gain'      => $gain_inte[2],
                 ];
            }else if($g->gain_attitude > $g->gain_experience && $g->gain_attitude > $g->gain_skill && $g->gain_attitude > $g->gain_intellegence && $g->gain_attitude > $g->gain_turnamen){
                $poin = [
                    'poin'      => 'attitude',
                    'lolos'     => $gain_atti[0],
                    'tidak'     => $gain_atti[1],
                    'gain'      => $gain_atti[2],
                 ];
            }else if($g->gain_turnamen > $g->gain_experience && $g->gain_turnamen > $g->gain_skill && $g->gain_turnamen > $g->gain_intellegence && $g->gain_turnamen > $g->gain_attitude){
                $poin = [
                    'poin'      => 'turnamen',
                    'lolos'     => $gain_turn[0],
                    'tidak'     => $gain_turn[1],
                    'gain'      => $gain_turn[2],
                 ];
            }else{
                $poin = [
                    'data'  => 'gagal'
                ];
            }

            // update kondisi 
        return $poin;

    }
    function Perulangan_Perhitungan($parent, $data, $node_att, $entropy_induk){
        // hitung attribute
        $data_player_experience = [];
        $data_skill = [];
        $data_attitude = [];
        $data_intellegence = [];
        $data_turnamen = [];
        
        $gain_player_experience = 0;
        $gain_skill = 0;
        $gain_attitude = 0;
        $gain_intellegence = 0;
        $gain_turnamen = 0;

        $delete=[];

        foreach ($node_att as $a) {
            ${"data_$a"} = $this->Hitung_attribute($a, $entropy_induk, $parent);
            ${"gain_$a"} = ${"data_$a"}[2];
              
        }
        $id_perhitungan = $this->Insert_Hitung($gain_player_experience, $gain_skill, $gain_attitude, $gain_intellegence, $gain_turnamen);
        // dd($data_player_experience);
        if(!isset($data_player_experience[1])){
            $delete [] = 'player_experience';
        }
        if(!isset($data_skill[1])){
            $delete [] = 'skill';
        }
        if(!isset($data_attitude[1])){
            $delete [] = 'attitude';
        }
        if(!isset($data_intellegence[1])){
            $delete [] = 'intellegence';
        }
        if(!isset($data_turnamen[1])){
            $delete [] = 'turnamen';
        }

        $g = DB::table('perhitungan')
            ->orderBy('id_rasio', 'desc')
            ->first();

        if(isset($data_player_experience[1]) && $g->gain_experience >  $g->gain_skill && $g->gain_experience > $g->gain_intellegence && $g->gain_experience > $g->gain_attitude && $g->gain_experience > $g->gain_turnamen){
            $poin = [
                'poin'      => 'experience',
                'lolos'     => $data_player_experience[0],
                'tidak'     => $data_player_experience[1],
                'gain'      => $data_player_experience[2],
                'delete'    => $delete
                ];
        }else if(isset($data_skill[1]) && $g->gain_skill > $g->gain_experience && $g->gain_skill > $g->gain_intellegence && $g->gain_skill > $g->gain_attitude && $g->gain_skill > $g->gain_turnamen){
            $poin = [
                'poin'      => 'skill',
                'lolos'     => $data_skill[0],
                'tidak'     => $data_skill[1],
                'gain'      => $data_skill[2],
                'delete'    => $delete
                ];
        }else if(isset($data_intellegence[1]) && $g->gain_intellegence > $g->gain_experience && $g->gain_intellegence > $g->gain_skill && $g->gain_intellegence > $g->gain_attitude && $g->gain_intellegence > $g->gain_turnamen){
            $poin = [
                'poin'      => 'intellegence',
                'lolos'     => $data_intellegence[0],
                'tidak'     => $data_intellegence[1],
                'gain'      => $data_intellegence[2],
                'delete'    => $delete
             ];
        }else if(isset($data_attitude[1]) && $g->gain_attitude > $g->gain_experience && $g->gain_attitude > $g->gain_skill && $g->gain_attitude > $g->gain_intellegence && $g->gain_attitude > $g->gain_turnamen){
            $poin = [
                'poin'      => 'attitude',
                'lolos'     => $data_attitude[0],
                'tidak'     => $data_attitude[1],
                'gain'      => $data_attitude[2],
                'delete'    => $delete
             ];
        }else if(isset($data_turnamen[1]) && $g->gain_turnamen > $g->gain_experience && $g->gain_turnamen > $g->gain_skill && $g->gain_turnamen > $g->gain_intellegence && $g->gain_turnamen > $g->gain_attitude){
            $poin = [
                'poin'      => 'turnamen',
                'lolos'     => $data_intellegence[0],
                'tidak'     => $data_intellegence[1],
                'gain'      => $data_intellegence[2],
                'delete'    => $delete
                ];
        }else{
            $poin = [
                'data'  => 'gagal'
            ];
        }
        
        return $poin;
       
    }
    function Parent_zero($data){
        if($data['lolos'] == 0){
            $parent = $data['poin'].'=lolos';
            $kondisi = [
                'parent'    => $parent,
                'target'    => 'Diterima'
            ];
            $parent = 0;
            $this->Insert_Role($kondisi);
        }else{
            $node_att = $this->Attribut();
            $data['delete'][] = $data['poin'];
            foreach ($data['delete'] as $d) {
                foreach ($node_att as $key => $element) {
                    if ($element ==  $d) {
                        unset($node_att[$key]);
                    }
                }
            }
            $parent = $data['poin'].'=lolos';
            $entropy_induk = $data['lolos'];
            $data = $this->Perulangan_Perhitungan($parent, $data, $node_att, $entropy_induk);
        }

        if($data['tidak'] == 0){
            $parent = $data['poin'].'=tidak';
            $kondisi = [
                'parent'    => $parent,
                'target'    => 'tidak diterima'
            ];
            $parent = 0;
            $this->Insert_Role($kondisi);
        }else{
            $node_att = $this->Attribut();
            $data['delete'][] = $data['poin'];
            foreach ($data['delete'] as $d){
                foreach ($node_att as $key => $element) {
                    if ($element == $d) {
                        unset($node_att[$key]);
                    }
                }
            }
            $parent = $data['poin'].'=tidak';
            $entropy_induk = $data['tidak'];
            $data = $this->Perulangan_Perhitungan($parent, $data, $node_att, $entropy_induk);
        }
    }
    function Parent_add($data,$parent){
        if($data['lolos'] == 0){
            $parent = $parent." AND ".$data['poin'].'=lolos';
            $kondisi = [
                'parent'    => $parent,
                'target'    => 'Diterima'
            ];
            $parent = 0;
            $this->Insert_Role($kondisi);
        }else{
            $parent = $parent." AND ".$data['poin'].'=lolos';
            $entropy_induk = $data['lolos'];
            $node_att = $this->Attribut();
            $data['delete'][] = $data['poin'];
            dd($data['delete']);
            foreach ($data['delete'] as $d) {
                foreach ($node_att as $key => $element) {
                    if ($element ==  $d) {
                        unset($node_att[$key]);
                    }
                }
            }
            dd('dd');
            $data = $this->Perulangan_Perhitungan($parent, $data, $node_att, $entropy_induk);
        }
        if($data['tidak'] == 0){
            $parent = $parent." AND ".$data['poin'].'=tidak';
            $kondisi = [
                'parent'    => $parent,
                'target'    => 'tidak diterima'
            ];
            $parent = 0;
            $this->Insert_Role($kondisi);
            $kondisi=[];
        }else{
            $parent = $parent." AND ".$data['poin'].'=tidak';
            $entropy_induk = $data['tidak'];
            $node_att = $this->Attribut();
            $data['delete'][] = $data['poin'];
            foreach ($data['delete'] as $d) {
                foreach ($node_att as $key => $element) {
                    if ($element ==  $d) {
                        unset($node_att[$key]);
                    }
                }
                dd('dd');
            }
            $data = $this->Perulangan_Perhitungan($parent, $data, $node_att, $entropy_induk);
        }
    }
    function Perulangan_cabang($data){
        do{
            if($parent == 0){
                
            }else{
                
            }
        }while($status == true);
    }
    function HitungMining(Request $request){
        $data = $this->Perhitungan_pertama();
        
        do{
            $this->Perulangan_cabang($data);
            
        }while($stop == true);
        


    }
}
