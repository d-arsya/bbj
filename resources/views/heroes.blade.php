@php
    use Carbon\Carbon;
@endphp
@extends('layouts.main')
@section('container')
    {{-- {{ dd($forms[0]->status) }} --}}
    @if ($forms[0]->status == 'aktif')
        <div class="px-10">
            <h1 class="text-center text-xl text-white mt-6">Food Rescue Aktif</h1>
            <div class="bg-tosca text-white rounded-md p-3 mt-4">
                <h1 class="text-sm">Donatur</h1>
                <h1 class="text-xl">{{ $forms[0]->donatur }}</h1>
                <h1 class="text-sm mt-3">Jumlah <svg onclick="openPopup()" class="inline ml-3 hover:text-black"
                        xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-pencil-square" viewBox="0 0 16 16">
                        <path
                            d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                        <path fill-rule="evenodd"
                            d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z" />
                    </svg></h1>
                <h1 class="text-xl">{{ $forms[0]->kuota }}</h1>
                <h1 class="text-sm mt-3">Sisa</h1>
                <h1 class="text-xl">

                    {{ $forms[0]->sisa }}</h1>
                {{-- <h1 class="text-sm mt-3">Selesai</h1>
                <h1 class="text-xl">Jam {{ $forms[0]->close }}</h1> --}}
                <a href="/end/{{ $forms[0]->id }}"
                    class="block w-full bg-navy hover:bg-red-700 rounded-md text-center py-2 mt-3 text-white">Akhiri</a>
            </div>
        </div>
        <h1 class="text-center text-xl text-white mt-6">Daftar Heroes</h1>
        <h1 class="text-center text-xl text-white mt-2 mb-6">BBJ X Holland</h1>
        <div class="px-5 text-white">
            @foreach ($heroes as $hero)
                <div class="flex justify-between p-3 bg-tosca rounded-md mt-1">
                    <div>
                        <h1 class="text-md font-bold">{{ ucwords($hero->nama) }}</h1>
                        <h1 class="italic text-sm">{{ $hero->asal }}</h1>
                        @if ($hero->status == 'belum')
                            <h1 class="fonr-bold text-lg text-md font-bold mt-2">{{ $hero->kode }}</h1>
                        @endif
                    </div>
                    <div class="flex gap-4">
                        <a href="https://wa.me/{{ $hero->telepon }}" class="hover:text-black"><svg
                                xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                                class="bi bi-headset" viewBox="0 0 16 16">
                                <path
                                    d="M8 1a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a6 6 0 1 1 12 0v6a2.5 2.5 0 0 1-2.5 2.5H9.366a1 1 0 0 1-.866.5h-1a1 1 0 1 1 0-2h1a1 1 0 0 1 .866.5H11.5A1.5 1.5 0 0 0 13 12h-1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h1V6a5 5 0 0 0-5-5" />
                            </svg></a>
                        @if ($hero->status == 'belum')
                            <a href="/heroes/delete/{{ $hero->id }}" class="hover:text-black"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                                    class="bi bi-person-walking" viewBox="0 0 16 16">
                                    <path
                                        d="M9.5 1.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0M6.44 3.752A.75.75 0 0 1 7 3.5h1.445c.742 0 1.32.643 1.243 1.38l-.43 4.083a1.8 1.8 0 0 1-.088.395l-.318.906.213.242a.8.8 0 0 1 .114.175l2 4.25a.75.75 0 1 1-1.357.638l-1.956-4.154-1.68-1.921A.75.75 0 0 1 6 8.96l.138-2.613-.435.489-.464 2.786a.75.75 0 1 1-1.48-.246l.5-3a.75.75 0 0 1 .18-.375l2-2.25Z" />
                                    <path
                                        d="M6.25 11.745v-1.418l1.204 1.375.261.524a.8.8 0 0 1-.12.231l-2.5 3.25a.75.75 0 1 1-1.19-.914zm4.22-4.215-.494-.494.205-1.843.006-.067 1.124 1.124h1.44a.75.75 0 0 1 0 1.5H11a.75.75 0 0 1-.531-.22Z" />
                                </svg></a>
                            <a href="/heroes/end/{{ $hero->id }}" class="hover:text-black">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                                    class="bi bi-bag-check" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                        d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0" />
                                    <path
                                        d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1m3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1z" />
                                </svg>
                            </a>
                        @endif
                    </div>
                </div>
            @endforeach
        @else
            <div class="px-10">
                <h1 class="text-center text-xl text-white mt-6">Buat Formulir</h1>
                <div class="bg-tosca text-white rounded-md py-5 px-6 mt-4">
                    <form action="/heroes" method="POST">
                        @csrf
                        <input type="text" name="donatur"
                            class="bg-tosca w-full text-slate-100 mt-6 focus:outline-none" placeholder="Donatur"
                            required>
                        <div class="w-full h-px bg-navy mt-1"></div>
                        <input type="number" name="kuota"
                            class="bg-tosca w-full text-slate-100 mt-6 focus:outline-none" placeholder="Kuota" required>
                        <div class="w-full h-px bg-navy mt-1"></div>
                        <input type="date" name="tanggal"
                            class="bg-tosca w-full text-slate-100 mt-6 focus:outline-none" placeholder="Pengambilan"
                            required>
                        <div class="w-full h-px bg-navy mt-1"></div>
                        <input type="number" name="jam"
                            class="bg-tosca w-full text-slate-100 mt-6 focus:outline-none" placeholder="Jam Pengambilan"
                            required>
                        <div class="w-full h-px bg-navy mt-1"></div>
                        <input type="text" name="lokasi"
                            class="bg-tosca w-full text-slate-100 mt-6 focus:outline-none" placeholder="Lokasi">
                        <div class="w-full h-px bg-navy mt-1"></div>
                        <input type="text" name="maps"
                            class="bg-tosca w-full text-slate-100 mt-6 focus:outline-none" placeholder="Maps">
                        <div class="w-full h-px bg-navy mt-1"></div>
                        <input type="submit" value="Buat"
                            class="w-full bg-white rounded-md p-1 text-lg font-bold mt-10 text-pink-800">
                    </form>
                </div>
            </div>
    @endif

    </div>
    <h1 class="text-center text-white font-bold text-xl mt-4">Riwayat Donasi</h1>
    <div class="px-10">
        @foreach ($forms->where('status', 'selesai')->sortBy([['pengambilan', 'desc']], SORT_STRING) as $form)
            <div class="p-2 bg-tosca rounded-md mt-3">
                <a href="/donation/{{ $form->id }}" class="text-white font-semibold">{{ $form->donatur }}</a>
                <h1 class="text-pink-600 text-xs italic font-medium">
                    {{ Carbon::parse($form->pengambilan)->isoFormat('dddd, DD MMMM YY') }}</h1>
            </div>
        @endforeach
    </div>

    <div id="popup"
        class="hidden fixed bg-black top-0 left-0 z-50 w-full h-full flex justify-center items-center bg-opacity-60">
        <div class="rounded-md w-80 md:w-96 bg-white px-10 py-4 absolute">
            {{-- <h1 class="text-3xl font-bold mb-4 text-center text-pink-600"></h1> --}}
            <form id="form" action="/heroes/edit" method="POST">
                @csrf
                <input autofocus="true" autocomplete="false" type="number" name="jumlah" placeholder="Jumlah"
                    class="w-full mt-4 border border-1 border-grey-200 p-2 rounded-t-lg" required>
                <input type="text" name="metode" id="metode" class="hidden">
                <div class="grid grid-cols-2">
                    <div onclick="tambah()"
                        class="text-center rounded-es-lg bg-white border border-1 border-pink-600 hover:bg-navy w-full p-1 text-pink-600 hover:text-white font-semibold cursor-pointer">
                        +</div>
                    <div onclick="kurang()"
                        class="text-center rounded-ee-lg bg-white border border-1 border-pink-600 hover:bg-navy w-full p-1 text-pink-600 hover:text-white font-semibold cursor-pointer">
                        -</div>
                </div>
                <div onclick="closePopup()"
                    class="text-center w-full p-3 text-red-600 hover:text-red-400 font-semibold cursor-pointer">Batal</div>
            </form>
        </div>
    </div>
    <script>
        function openPopup() {
            document.getElementById('popup').classList.remove('hidden')
        }

        function tambah() {
            document.querySelector('input[name="metode"]').value = "tambah"
            document.getElementById('form').submit()
        }

        function kurang() {
            document.querySelector('input[name="metode"]').value = "kurang"
            document.getElementById('form').submit()
        }

        function closePopup() {
            document.querySelector('input[name="jumlah"]').value = ""
            document.getElementById('popup').classList.add('hidden')
        }
    </script>
@endsection
