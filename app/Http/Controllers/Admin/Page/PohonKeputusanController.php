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
                'akar',
                'keputusan',
            ])
            ->get();

        $i = 0;
        $data = [];
        foreach($rule as $q){
            $data[$i] = [
                $q->id_rule,
                $q->pohon_keputusan,
                $q->akar,
                $q->keputusan,
            ];
            $i++;
        }
        return response($data);
    }
}
