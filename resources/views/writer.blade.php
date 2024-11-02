@extends('layout.master')

@section('konten')
    <div>
        <div class="fs-3 fw-bold" style="margin:3%">
            <p>Our Writers:</p>
        </div>

        <div class="row" style="margin:3%">
            @foreach ($writer as $w)
                <div class="col-md-4 mb-4 d-flex justify-content-center" style="margin-bottom:2%">
                    <div class="card d-flex text-center align-items-center"
                        style="width: 18rem; background-color:#f0f4ef; border:0; margin-bottom:4%">
                        <img src="{{ asset('asset/profile.png') }}" class="card-img-top rounded-circle" style="width:70%; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.8);"
                            alt="Profile Picture">
                        <div class="card-body">
                            <p class="card-title fw-bold fs-6"><a href="{{route('writerDetail', ['id'=>$w->id])}}" style="text-decoration: none; color:black">{{ $w->name }}</a></p>
                            <p class="card-text fs-6">Spesialis {{ $w->specialist }}</p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

    </div>
@endsection
