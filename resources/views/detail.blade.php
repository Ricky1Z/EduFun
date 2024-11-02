@extends('layout.master')

@section('konten')
    <div class="m-4" style="">
        <div class="fs-3 fw-bold">
            <p>{{$post->msCategory->category}}</p>
        </div>

        <div class="m-0 g-0">
            <div class='p-0' style=' overflow:hidden; margin-bottom:0%; margin-left:2%; margin-right:2%'>
                <img src="{{ asset('asset/cover.png') }}" style="border-radius: 20px; width: 100%; height: 600px;" alt="banner">
            </div>

            <div style="margin-left:3%; margin-right:3%">
                <div style="margin-top: 1%">
                    <p>{{$post->created_at}} | by: {{$post->msWriter->name}}</p>
                </div>
                <div>
                    <p>{{$post->description}}</p>
                </div>
            </div>
        </div>
    </div>
@endsection
