<?php

namespace App\Http\Controllers;

use PDF;
use Illuminate\Http\Request;
use App\Models\Pdam;

class PdamController extends Controller
{
    public function pdam()
    {
        $pdam = Pdam::all();
        return view('pdam', ['DaftarPDAM' => $pdam]);
    }

    public function PDFpdam(){
        $pdams = Pdam::all();
        $pdf = PDF::loadView('PDFpdam', ['DaftarPDAM' => $pdams]);
        return $pdf->stream('PDAM.pdf');
    }
}
