<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
class HasilPrediksiController extends Controller
{
    //
    function IndexPageHasilPrediksi(Request $request){

        return view('page.hasil-prediksi');
    }
}
