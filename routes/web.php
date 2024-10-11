<?php

use App\Http\Controllers\FirefighterController;
use App\Http\Controllers\HospitalController;
use App\Http\Controllers\PdamController;
use App\Http\Controllers\PlnController;
use App\Http\Controllers\PoliceController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('index');
});

Route::get('/polisi', [PoliceController::class,'polisi']);

Route::get('/damkar', [FirefighterController::class,'damkar']);

Route::get('/rs', [HospitalController::class,'rs']);

Route::get('/pln', [PlnController::class,'pln']);

Route::get('/pdam', [PdamController::class,'pdam']);

Route::get('/PDFpolisi', [PoliceController::class, 'PDFpolisi']);

Route::get('/PDFdamkar', [FirefighterController::class, 'PDFdamkar']);

Route::get('/PDFrs', [HospitalController::class, 'PDFrs']);

Route::get('/PDFpln', [PlnController::class, 'PDFpln']);

Route::get('/PDFpdam', [PdamController::class, 'PDFpdam']);
