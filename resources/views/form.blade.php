@php
    use Carbon\Carbon;
@endphp
@extends('layouts.main')
@section('container')
<div class="pt-12 h-screen bg-navy px-12">
        {{-- ada  --}}
        @if ($form->count() == 1)
        <h1 class="text-center text-4xl font-bold text-white">BBJ X {{ $form[0]->donatur }}</h1>
        <h1 class="text-center text-white text-xl italic font-semibold rounded-md mt-2">{{ Carbon::parse($form[0]->pengambilan)->isoFormat('dddd, DD MMMM Y') }}</h1>
        
        @if (session('form') != $form[0]->id && $form[0]->sisa==0)
        <div class="w-full rounded-lg bg-tosca mt-8 py-5 px-6">
            <h1 class="text-xl text-white font-medium text-center italic">Mohon maaf kuota telah terpenuhi, datang lagi lain waktu
            </h1>
            <h1 class="text-sm text-white font-medium text-center italic mt-3">ikuti instagram kami</h1>
            <a href="https://www.instagram.com/berbagibitesjogja/"
            class="text-sm text-center block text-white font-medium text-center italic">@berbagibitesjogja</a>
        </div>
            @elseif(session('form') == $form[0]->id)
            <div class="w-full rounded-lg bg-tosca mt-8 py-5 px-6">
                <h1 class="text-xl text-white font-medium text-center italic">Terimakasih telah menjadi heroes hari ini
                </h1>
                <h1 class="text-4xl text-white font-medium text-center italic my-4">{{ implode(' ', str_split(session('kode'))) }}
                </h1>
                
                <h1 class="text-sm text-white font-medium text-center italic mt-1">tunjukkan untuk menukarkan makanan</h1>
                <h1 class="text-sm text-white font-medium text-center italic mt-3">ikuti instagram kami</h1>
                <a href="https://www.instagram.com/berbagibitesjogja/"
                class="text-sm text-center block text-white font-medium text-center italic">@berbagibitesjogja</a>
            </div>
            <div class="w-full rounded-lg bg-tosca mt-8 py-5 px-6">
                <h1 class="text-xl text-white font-medium text-center italic mb-4">Informasi Pengambilan
                </h1>
                <a href="{{ $form[0]->maps }}" class="text-center text-white text-md italic font-medium rounded-md mt-3"><svg class="inline" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                    <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
                  </svg> {{ $form[0]->lokasi }}</a>
                  <h1 class="text-white text-md italic font-medium rounded-md mt-3"><svg class="inline mr-1" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock-fill" viewBox="0 0 16 16">
                    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71z"/>
                  </svg>{{ $form[0]->jam }}.00 WIB</h1>
            </div>
            @else
            <div class="w-full rounded-lg bg-tosca mt-8 py-5 px-6">
                <h1 class="text-2xl text-white font-semibold text-center">RSVP Now</h1>
                <form action="/" method="POST">
                    @csrf
                    <input type="number" name="form" value="{{ $form[0]->id }}" id="" class="hidden">
                    <input autocomplete="off" type="text" name="nama" id=""
                        class="bg-tosca w-full text-slate-100 mt-6 focus:outline-none" placeholder="Nama" required>
                    <div class="w-full h-px bg-navy mt-1"></div>
                    <div class="relative w-full">
                        <span class="absolute left-0 bottom-0 text-slate-100">+62</span>
                        <input autocomplete="off" type="number" name="telepon" id=""
                            class="bg-tosca w-full text-slate-100 mt-6 pl-8 focus:outline-none" placeholder="Nomor Whatsapp"
                            required>
                            
                        </div>
                        <div class="w-full h-px bg-navy mt-1"></div>
                        @error('telepon')
                        <p class="text-xs italic font-thin text-pink-200">Silahkan masukkan format telepon yang benar</p>                            
                        @enderror
                    <select class="bg-tosca w-full text-slate-100 mt-6 focus:outline-none"
                        placeholder="Nomor Whatsapp" name="asal" required>
                        <option value="">Asal</option>
                        <option value="Biologi">Biologi</option>
                        <option value="Ekonomi Bisnis">Ekonomi Bisnis</option>
                        <option value="Filsafat">Filsafat</option>
                        <option value="Fisipol">Fisipol</option>
                        <option value="Geografi">Geografi</option>
                        <option value="Hukum">Hukum</option>
                        <option value="Ilmu Budaya">Ilmu Budaya</option>
                        <option value="Kedokteran">Kedokteran</option>
                        <option value="Kedokteran Gigi">Kedokteran Gigi</option>
                        <option value="Kedokteran Hewan">Kedokteran Hewan</option>
                        <option value="Kehutanan">Kehutanan</option>
                        <option value="MIPA">MIPA</option>
                        <option value="Pascasarjana">Pascasarjana</option>
                        <option value="Pertanian">Pertanian</option>
                        <option value="Peternakan">Peternakan</option>
                        <option value="Psikologi">Psikologi</option>
                        <option value="Teknologi Pertanian">Teknologi Pertanian</option>
                        <option value="Vokasi">Vokasi</option>
                        <option value="Lainnya">Lainnya</option>
                    </select>
                    <div class="w-full h-px bg-navy mt-1"></div>
                    <input type="submit" value="Submit"
                        class="w-full bg-white rounded-md p-1 text-lg font-bold mt-10 text-navy">
                </form>
            </div>
            @endif
            {{-- kuota  --}}
            <h1 class="text-pink-900 text-xl font-semibold text-center mt-10">Kuota</h1>
            <h1 class="text-white text-4xl font-bold text-center mt-4">{{ $form[0]->sisa }}</h1>
            {{-- terimakasih  --}}
        @else
            <div class="w-full rounded-lg bg-tosca mt-8 py-5 px-6">
                <h1 class="text-xl text-white font-medium text-center italic">Maaf, belum ada food rescue hari ini</h1>
                <h1 class="text-md text-white font-medium text-center italic mt-3">ikuti instagram kami</h1>
                <a href="https://www.instagram.com/berbagibitesjogja/"
                    class="text-sm text-center block text-white font-medium text-center italic">@berbagibitesjogja</a>
            </div>
        @endif
    </div>
@endsection
