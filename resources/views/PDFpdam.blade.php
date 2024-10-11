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
    <div class="container fluid">
        <h1>Daftar PDAM</h1>
        <table class="table table-striped table-hover mt-3">
            <thead>
                <tr>
                    <th style="padding: 5px 10px;">No</th>
                    <th style="padding: 5px 10px; width:23%;">Nama PDAM</th>
                    <th style="padding: 5px 10px; width:23%;">No Telepon</th>
                    <th style="padding: 5px 10px;">Kecamatan</th>
                    <th style="padding: 5px 10px; width:50%;">Alamat</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($DaftarPDAM as $data)
                    <tr>
                        <td style="padding: 5px 10px;">{{ $loop->iteration }}</td>
                        <td style="padding: 5px 10px; width:23%;">{{ $data->NamaPdam }}</td>
                        <td style="padding: 5px 10px; width:23%;">{{ $data->NoTelepon }}</td>
                        <td style="padding: 5px 10px;">{{ $data->districts['NamaKecamatan'] }}</td>
                        <td style="padding: 5px 10px; width:50%;">{{ $data->Alamat }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</body>
</html>
