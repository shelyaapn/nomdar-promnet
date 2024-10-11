<?php

namespace App\Http\Controllers;

use PDF;
use Illuminate\Http\Request;
use App\Models\Hospital;

class HospitalController extends Controller
{
    public function rs()
    {
        $rs = Hospital::all();
        return view('rs', ['DaftarRumahSakit' => $rs]);
    }

    public function PDFrs(){
        $hospitals = Hospital::all();
        $pdf = PDF::loadView('PDFrs', ['DaftarRumahSakit' => $hospitals]);
        return $pdf->stream('RumahSakit.pdf');
    }
}
