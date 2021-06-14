<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
class DataMiningController extends Controller
{
    //
    function IndexPageMining(Request $request){

        return view('page.data-mining');
    }
}
