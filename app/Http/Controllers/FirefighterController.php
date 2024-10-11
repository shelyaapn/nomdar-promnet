<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\Firefighter;
use Illuminate\Http\Request;

class FirefighterController extends Controller
{
    public function damkar()
    {
        $damkar = Firefighter::all();
        return view('damkar', ['DaftarPoswil' => $damkar]);
    }
    public function PDFdamkar(){
        $firefighters = Firefighter::all();
        $pdf = PDF::loadView('PDFdamkar', ['DaftarPoswil' => $firefighters]);
        return $pdf->stream('Damkar.pdf');
    }
}
