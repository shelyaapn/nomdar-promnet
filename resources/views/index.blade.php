<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Dashboard | Nomor Darurat</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Font Google -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- My Style -->
    <link rel="stylesheet" href="my_style/style.css">

    <!-- Responsive Style -->
    <link rel="stylesheet" href="my_style/responsive.css">

    <!-- Logo Title -->
    <link rel="icon" href="img/LOGO.png" type="image/x-icon">

</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-transparent position-fixed w-100">
        <div class="container">
            <a class="navbar-brand" href="/">
                <img src="img/LOGO.png" alt="Logo" width="30" class="d-inline-block align-text-top me-2">
                Nomdar
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item mx-2">
                        <a class="nav-link active" aria-current="page" href="/">HOME</a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="/polisi">POLISI</a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="/damkar">DAMKAR</a>
                    </li>
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="/rs">RUMAH SAKIT</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pln">PLN</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pdam">PDAM</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="hero">
        <div class="container h-100 w-100">
            <div class="row h-100">
                <div class="col-md-6 hero-tagline my-auto">
                    <h1>Membantu Temukan Nomor
                        Darurat yang Anda Butuhkan.</h1>
                    <p class="mt-4"><span class="fw-bold">Nomdar</span> hadir untuk membantu anda menemukan nomor
                        darurat yang ada
                        di daerah Purwakarta, sesuai dengan kondisi darurat yang anda alami.</p>
                </div>
            </div>
            <img src="/img/Hero.png" class="position-absolute end-0 bottom-0 img-hero">
        </div>
    </section>

    <!-- Layanan Section -->
    <section id="layanan">
        <div class="container w-100">
            <div class="row">
                <div class="col-12 text-center">
                    <h2>Layanan Kami</h2>
                    <span class="sub-title">Nomdar hadir menjadi penolong untuk anda</span>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-4 text-center kartu">
                    <div class="card-layanan">
                        <a  href="/polisi" class="layanan-link">
                            <div class="circle-icon position-relative mx-auto mt-1">
                                <img src="/img/police-icon.png" class="position-absolute top-50 start-50 translate-middle"
                                    width="70">
                            </div>
                            <h3 class="mt-4">Polisi Sektor</h3>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="card-layanan">
                        <a  href="/damkar" class="layanan-link">
                            <div class="circle-icon position-relative mx-auto mt-1">
                                <img src="/img/fire-icon.png" class="position-absolute top-50 start-50 translate-middle"
                                    width="70">
                            </div>
                            <h3 class="mt-4">Pemadam Kebakaran</h3>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="card-layanan">
                        <a  href="/rs" class="layanan-link">
                            <div class="circle-icon position-relative mx-auto mt-1">
                                <img src="/img/ambulance-icon.png"
                                    class="position-absolute top-50 start-50 translate-middle" width="70">
                            </div>
                            <h3 class="mt-4">Rumah Sakit</h3>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-2"></div>
                <div class="col-md-4 mx-auto text-center">
                    <div class="card-layanan">
                        <a  href="/pln" class="layanan-link">
                            <div class="circle-icon position-relative mx-auto mt-1">
                                <img src="/img/electric-icon.png" class="position-absolute top-50 start-50 translate-middle"
                                    width="70">
                            </div>
                            <h3 class="mt-4">PLN</h3>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 mx-auto text-center">
                    <div class="card-layanan">
                        <a  href="/pdam" class="layanan-link">
                            <div class="circle-icon position-relative mx-auto mt-1">
                                <img src="/img/water-icon.png" class="position-absolute top-50 start-50 translate-middle"
                                    width="70">
                            </div>
                            <h3 class="mt-4">PDAM</h3>
                        </a>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="d-flex align-items-center position-relative w-100">
        <div class="container-fluid">
            <div class="container">
                <div class="row d-flex align-items-center mb-5">
                    <div class="col-md-7 d-flex align-items-center justify-content-lg-start justify-content-center">
                        <img src="img/LOGO.png" width="30" class="d-inline-block align-text-top img-footer me-2">
                        <a href="/" class="label">Nomdar</a>
                    </div>
                    <div class="col-md-5 d-flex justify-content-evenly justify-content-center menu">
                        <a href="#hero" class="menu">HOME</a>
                        <a href="/polisi" class="menu">POLISI</a>
                        <a href="/damkar" class="menu">DAMKAR</a>
                        <a href="/rs" class="menu">RUMAH SAKIT</a>
                        <a href="/pln" class="menu">PLN</a>
                        <a href="/pdam" class="menu">PDAM</a>
                    </div>
                </div>
                <div class="row position-absolute copyright start-50 translate-middle">
                    <div class="col-md-12">
                        <p class="text-center">Copyright by Kelompok 2, PSTI Angkatan 2021 All Right Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
        integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/7d10694fb7.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
    <script src="my_style/script.js"></script>
</body>

</html>

