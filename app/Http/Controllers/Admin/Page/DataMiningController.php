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

    function GetDataBase($where){
        $total_diterima = DB::table('talent_survey')
            ->where('target', 'like', 'diterima')
            ->count();
        $total_ditolak = DB::table('talent_survey')
            ->where('target', 'like', 'tidak diterima')
            ->count();
        $experience_lolos = DB::table('talent_survey')
            ->select([
                'player_experience',
                'target',
            ])
            ->where('player_experience','lolos')
            ->get();
        $experience_tidak = DB::table('talent_survey')
            ->select([
                'player_experience',
                'target',
            ])
            ->where('player_experience','tidak')
            ->get();
        $skill_lolos = DB::table('talent_survey')
            ->select([
                'skill',
                'target',
            ])
            ->where('skill','lolos')
            ->get();
        $skill_tidak = DB::table('talent_survey')
            ->select([
                'skill',
                'target',
            ])
            ->where('skill','tidak')
            ->get();
        $intellegence_lolos = DB::table('talent_survey')
            ->select([
                'intellegence',
                'target',
            ])
            ->where('intellegence','lolos')
            ->get();
        $intellegence_tidak = DB::table('talent_survey')
            ->select([
                'intellegence',
                'target',
            ])
            ->where('intellegence','tidak')
            ->get();
        $attitude_lolos = DB::table('talent_survey')
            ->select([
                'attitude',
                'target',
            ])
            ->where('attitude','lolos')
            ->get();
        $attitude_tidak = DB::table('talent_survey')
            ->select([
                'attitude',
                'target',
            ])
            ->where('attitude','tidak')
            ->get();

        $turnamen_lolos = DB::table('talent_survey')
            ->select([
                'turnamen',
                'target',
            ])
            ->where('turnamen','lolos')
            ->get();
        $turnamen_tidak = DB::table('talent_survey')
            ->select([
                'turnamen',
                'target',
            ])
            ->where('turnamen','tidak')
            ->get();


        

    }

    function HitungMining(Request $request){
        $total_diterima = DB::table('talent_survey')
            ->where('target', 'like', 'diterima')
            ->count();
        $total_ditolak = DB::table('talent_survey')
            ->where('target', 'like', 'tidak diterima')
            ->count();
        $experience_lolos = DB::table('talent_survey')
            ->select([
                'player_experience',
                'target',
            ])
            ->where('player_experience','lolos')
            ->get();
        $experience_tidak = DB::table('talent_survey')
            ->select([
                'player_experience',
                'target',
            ])
            ->where('player_experience','tidak')
            ->get();
        $skill_lolos = DB::table('talent_survey')
            ->select([
                'skill',
                'target',
            ])
            ->where('skill','lolos')
            ->get();
        $skill_tidak = DB::table('talent_survey')
            ->select([
                'skill',
                'target',
            ])
            ->where('skill','tidak')
            ->get();
        $intellegence_lolos = DB::table('talent_survey')
            ->select([
                'intellegence',
                'target',
            ])
            ->where('intellegence','lolos')
            ->get();
        $intellegence_tidak = DB::table('talent_survey')
            ->select([
                'intellegence',
                'target',
            ])
            ->where('intellegence','tidak')
            ->get();
        $attitude_lolos = DB::table('talent_survey')
            ->select([
                'attitude',
                'target',
            ])
            ->where('attitude','lolos')
            ->get();
        $attitude_tidak = DB::table('talent_survey')
            ->select([
                'attitude',
                'target',
            ])
            ->where('attitude','tidak')
            ->get();

        $turnamen_lolos = DB::table('talent_survey')
            ->select([
                'turnamen',
                'target',
            ])
            ->where('turnamen','lolos')
            ->get();
        $turnamen_tidak = DB::table('talent_survey')
            ->select([
                'turnamen',
                'target',
            ])
            ->where('turnamen','tidak')
            ->get();
            
        // dd($experience_lolos .  $experience_tidak .  $skill_lolos . $skill_tidak . $intellegence_lolos . $intellegence_tidak .
        // $attitude_lolos . $attitude_tidak .  $turnamen_lolos . $turnamen_tidak);

        // mencari nilai dari atribut total
        $total = $total_diterima + $total_ditolak;
        $total_minus = (-$total);
        dd($total_minus);



    }
}
