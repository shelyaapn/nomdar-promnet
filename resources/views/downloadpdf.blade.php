<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Download | Nomor Darurat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>
    <div class="container fluid mt-3">
        <h1>Daftar Nomor Darurat</h1>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Polsek</th>
                    <th>No Telepon</th>
                    <th>Kecamatan</th>
                    <th>Alamat</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($DaftarPolsek as $data)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $data->NamaPolsek }}</td>
                        <td>{{ $data->NoTelepon }}</td>
                        <td>{{ $data->districts['NamaKecamatan'] }}</td>
                        <td>{{ $data->Alamat }}</td>
                        <td></td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</body>
</html>
