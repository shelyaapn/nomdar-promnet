<?php

namespace App\Http\Controllers;

use PDF;
use Illuminate\Http\Request;
use App\Models\Pln;

class PlnController extends Controller
{
    public function pln()
    {
        $pln = Pln::all();
        return view('pln', ['DaftarPLN' => $pln]);
    }
    public function PDFpln(){
        $plns = Pln::all();
        $pdf = PDF::loadView('PDFpln', ['DaftarPLN' => $plns]);
        return $pdf->stream('PLN.pdf');
    }
}
