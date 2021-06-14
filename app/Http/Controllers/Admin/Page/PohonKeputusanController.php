<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
class PohonKeputusanController extends Controller
{
    //
    function IndexPagePohonKeputusan(Request $request){

        return view('page.pohon-keputusan');
    }
}
