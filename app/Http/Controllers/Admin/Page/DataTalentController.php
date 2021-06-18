<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Rules\ExcelRule;
use Validator;
use Auth;
use DB;



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

    function PostDataTalent(Request $request){
        dd($request); 
        $validator = Validator::make(
            [
                'file'      => $request->data_talent,
                'extension' => strtolower($request->data_talent->getClientOriginalExtension()),
            ],
            [
                'file'          => 'required',
                'extension'      => 'required|in:xlsx,xls',
            ]
          );

       
    }
}
