<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
class DashboardController extends Controller
{
    //
    function IndexDashboard(Request $request){

        
        return view('page.dashboard');
    }
}
