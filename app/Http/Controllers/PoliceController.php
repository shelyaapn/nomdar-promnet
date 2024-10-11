<?php

namespace App\Http\Controllers;

use PDF;
use Illuminate\Http\Request;
use App\Models\Police;

class PoliceController extends Controller
{
    public function polisi()
    {
        $polices = Police::all();
        return view('polisi', ['DaftarPolsek' => $polices]);
    }

    public function PDFpolisi(){
        $polices = Police::all();
        $pdf = PDF::loadView('PDFpolisi', ['Daftar' => $polices]);
        return $pdf->stream('Polisi.pdf');
    }
}
