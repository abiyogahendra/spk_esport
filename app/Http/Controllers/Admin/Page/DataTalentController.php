<?php

namespace App\Http\Controllers\Admin\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
class DataTalentController extends Controller
{
    //
    function IndexPageTalent(Request $request){

        return view('page.data-talent');
    }
}
