<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
class PrediksiC4Controller extends Controller
{
    //
    function IndexPagePrediksiC4(Request $request){

        return view('page.prediksi-c4');
    }
}
