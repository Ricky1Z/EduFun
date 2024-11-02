<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>EduFun</title>
    <link rel="icon" href="{{asset('asset/logoEdufun.png')}}" />
    @include('custom.bootstrap5')
    <style>
        body {
            background-color: #f0f4ef;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }

        .main-content {
            flex-grow: 1;
        }

        .pagination {
            justify-content: center;
            margin-top: 20px;
        }

        .pagination li {
            margin: 0 5px;
        }

        .pagination li a {
            color: #080f29;
            background-color: #f0f4ef;
            padding: 8px 12px;
            transition: background-color 0.3s;
        }

        .pagination li a:hover {
            background-color: #efef53;
        }

        .mt-2 {
            margin-top: 0.5rem;
            text-align: center;
        }

        .navbar-nav li a{
            transition: background-color 0.3s;
            padding: 12px 12px;
        }

        .navbar-nav li a:hover{
            background-color: #CBDCEB;
            border-radius: 20%
        }
    </style>
</head>

<body>
    <div class="main-content">
        <div class="d-flex justify-content-between align-items-center p-3 shadow-sm bg-light">
            <div class="me-auto">
                <img src="{{ asset('asset/logoEdufun.png') }}" style="width: 50px" alt="logo edufun">
            </div>

            <div class="ms-auto" id="navbarNavDropdown">
                <ul class="navbar-nav d-flex flex-row gap-5 ">
                    <li class="nav-item fw-bold" >
                        <a class="nav-link active" aria-current="page" style="color: black"
                            href="{{ route('home') }}">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle fw-bold" style="color: black" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Category
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="{{ route('category', ['subject' => 1]) }}">Data
                                    Science</a></li>
                            <li><a class="dropdown-item" href="{{ route('category', ['subject' => 2]) }}">Network
                                    Security</a></li>
                        </ul>
                    </li>
                    <li class="nav-item fw-bold">
                        <a class="nav-link" style="color: black" href="{{ route('writer') }}">Writers</a>
                    </li>
                    <li class="nav-item fw-bold">
                        <a class="nav-link" style="color: black" href="{{ route('aboutUs') }}">About Us</a>
                    </li>
                    <li class="nav-item fw-bold">
                        <a class="nav-link" style="color: black" href="{{ route('popular') }}">Popular</a>
                    </li>
                </ul>
            </div>
        </div>

        @yield('konten')
    </div>

    <footer class="p-4 text-white" style="background-color: #080f29; margin-top:3%">
        <div class="text-center m-0">
            <p class="m-0">@ Edufun 2024 | Web programming | Ricky | 2602141101</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
