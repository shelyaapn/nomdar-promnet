@extends('layouts.mainlayout')

@section('tittle', 'Rumah Sakit')

@section('daftar')
    <div class="container" style="padding-top:3%;">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row mt-2">
                    <div class="col-sm-6">
                        <h3>Rumah Sakit</h3>
                    </div>
                    <div class="col-sm-6">
                        <a href="/PDFrs" class="btn" data-toggle="modal"><i class="fa-solid fa-print"></i><span> Print</span></a>
                    </div>
                </div>
            </div>
            <table id="daftar" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Rumah Sakit</th>
                        <th>No Telepon</th>
                        <th>Kecamatan</th>
                        <th>Alamat</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($DaftarRumahSakit as $data)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $data->NamaRumahSakit }}</td>
                            <td>{{ $data->NoTelepon }}</td>
                            <td>{{ $data->districts['NamaKecamatan'] }}</td>
                            <td>{{ $data->Alamat }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
