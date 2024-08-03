@extends('layouts.main')
@section('container')
    <div class="px-10 mt-3">
        <div class="p-2 bg-pink-800 rounded-md mt-3">
            <div class="text-white text-center text-xl font-bold">{{ $donation->donatur }}</div>
            <h1 class="text-white text-md font-medium">{{ $donation->kuota }} Paket</h1>
            <h1 class="text-white text-md font-medium">{{ $donation->kuota - $donation->sisa }} Heroes</h1>
        </div>
    </div>
    <h1 class="text-center text-white font-bold text-xl mt-4">Daftar Heroes</h1>
    <div class="px-10">
        @foreach ($heroes as $hero)
        <div class="flex justify-between p-3 bg-pink-800 rounded-md mt-1">
            <div>
                <h1 class="text-md text-white font-bold">{{ ucwords($hero->nama) }}</h1>
                <h1 class="italic text-pink-600 text-sm">{{ $hero->asal }}</h1>
            </div>
            <div class="flex gap-4">
                <a href="https://wa.me/{{ $hero->telepon }}" class="hover:text-black"><svg
                        xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                        class="bi bi-headset" viewBox="0 0 16 16">
                        <path
                            d="M8 1a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a6 6 0 1 1 12 0v6a2.5 2.5 0 0 1-2.5 2.5H9.366a1 1 0 0 1-.866.5h-1a1 1 0 1 1 0-2h1a1 1 0 0 1 .866.5H11.5A1.5 1.5 0 0 0 13 12h-1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h1V6a5 5 0 0 0-5-5" />
                    </svg></a>
            </div>
        </div>
        @endforeach
    </div>
@endsection
