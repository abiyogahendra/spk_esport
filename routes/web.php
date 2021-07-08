<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\LoginController;


// connect controller talent
use App\Http\Controllers\Admin\Page\DataTalentController;

// connect controller mining
use App\Http\Controllers\Admin\Page\DataMiningController;

// connect controller data uji
use App\Http\Controllers\Admin\Page\DataUjiController;

// connect controller pohon keputusan
use App\Http\Controllers\Admin\Page\PohonKeputusanController;

// connect controller prediksi c4
use App\Http\Controllers\Admin\Page\PrediksiC4Controller;

// connect controller hasil prediksi
use App\Http\Controllers\Admin\Page\HasilPrediksiController;




/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/login', [LoginController::class, 'IndexLogin'])->name('login');
Route::post('/login_process', [LoginController::class, 'LoginProcess']);





Route::group(['middleware' => ['auth']], function(){
    
    Route::get('/', [DashboardController::class, 'IndexDashboard'])->name('dashboard-admin');
    
    
    // talent index
        Route::get('/index-talent', [DataTalentController::class, 'IndexPageTalent'])->name('data-talent');
        Route::get('/data-table-data-talent', [DataTalentController::class, 'DataTableTalent']);
        Route::post('/upload-data-talent', [DataTalentController::class, 'PostDataTalent']);
        Route::post('/delete-all-data-talent', [DataTalentController::class, 'DeleteAllDataTalent']);
        
    // data Uji Index
        Route::get('/index-data-uji', [DataUjiController::class, 'IndexDataUji'])->name('data-uji');
        Route::get('/data-table-data-uji', [DataUjiController::class, 'DataTableDataUji']);
        Route::post('/upload-data-uji', [DataUjiController::class, 'PostDataUji']);
        Route::post('/delete-all-data-uji', [DataUjiController::class, 'DeleteAllDataUji']);
        Route::post('/mining-data-uji', [DataUjiController::class, 'MiningDataUji']);

    // mining index
        Route::get('/index-mining', [DataMiningController::class, 'IndexPageMining'])->name('data-mining');
        Route::post('hitung-mining', [DataMiningController::class, 'HitungMining']);

    // pohon keputusan index
        Route::get('/index-pohon-keputusan', [PohonKeputusanController::class, 'IndexPagePohonKeputusan'])->name('data-pohon-keputusan');
        Route::get('/data-table-data-rule', [PohonKeputusanController::class, 'DataTableRule']);
        Route::post('/delete-rule', [PohonKeputusanController::class, 'DeletedAllRule']);
        Route::post('/akurasi-rule', [PohonKeputusanController::class, 'HitungAkurasiRule']);

    // prediksi c4 index
        Route::get('/index-prediksi-c4', [PrediksiC4Controller::class, 'IndexPagePrediksiC4'])->name('data-prediksi-c4');

    // hasil prediksi index
        Route::get('/index-hasil-prediksi', [HasilPrediksiController::class, 'IndexPageHasilPrediksi'])->name('data-hasil-prediksi');





        Route::get('/logout', [LoginController::class, 'LogoutProcess'])->name('logout-admin');
});
