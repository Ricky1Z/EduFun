@extends('layout.master')

@section('konten')
    <div class="d-flex align-items-center" style="margin-left: 3%; margin-top:2%; margin-bottom:2%">
        <div class="me-3">
            <img src="{{ asset('asset/profile.png') }}" class="rounded-circle" style="width: 60px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.8);" alt="Profile Picture">
        </div>

        <div>
            <p class="m-0 fw-bold">{{ $writer->name }}</p>
            <p class="m-0 ">Spesialis {{ $writer->specialist }}</p>
        </div>
    </div>

    @foreach ($post as $p)
        <div class="border-0 mh-auto mt-4" style="margin-left: 60px; margin-right: 60px">
            <div class="card h-100 border-0 d-flex flex-row align-items-center">
                <div class="row g-0 d-flex justify-content-between align-items-center" style="background-color: #f0f4ef">
                    <div style="width: 20%">
                        <img src="{{ asset('asset/cover.png') }}" class="img-fluid w-100 p-0"
                            style="border-radius: 40px" alt="...">
                    </div>
                    <div class="col-md-9 g-0">
                        <div class="card-body">
                            <h5 class="card-title">{{ $p->title }}</h5>
                            <h6 class="card-date">{{ $p->created_at }} | by: {{ $p->msWriter->name }}</h6>
                            <p class="card-text">{{ $p->description }}</p>
                            <p class="card-text"><small class="text-body-secondary"></small></p>
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                <button class="btn btn-primary"
                                    style="background-color: #080f29; border-radius: 40px; padding-left:6%; padding-right:6%" type="button"><a
                                        style="color: white; text-decoration:none"
                                        href="{{ route('detail', ['id' => $p->id]) }}">read more...</a></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach

@endsection
