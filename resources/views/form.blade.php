@extends('layouts.main')
@section('container')
    <div class="pt-12 h-screen bg-pink-600 px-12">
        {{-- ada  --}}
        @if ($form->count() == 1)
        <h1 class="text-center text-4xl font-bold text-white">BBJ X {{ $form[0]->donatur }}</h1>
            @if (session('form') != $form[0]->id && $form[0]->sisa==0)
            <div class="w-full rounded-lg bg-pink-800 mt-8 py-5 px-6">
                <h1 class="text-xl text-pink-400 font-medium text-center italic">Mohon maaf kuota telah terpenuhi, datang lagi lain waktu
                    </h1>
                    <h1 class="text-sm text-white font-medium text-center italic mt-3">ikuti instagram kami</h1>
                    <a href="https://www.instagram.com/berbagibitesjogja/"
                        class="text-sm text-center block text-white font-medium text-center italic">@berbagibitesjogja</a>
                </div>
            @elseif(session('form') == $form[0]->id)
            <div class="w-full rounded-lg bg-pink-800 mt-8 py-5 px-6">
                <h1 class="text-xl text-pink-400 font-medium text-center italic">Terimakasih telah menjadi heroes hari ini
                </h1>
                <h1 class="text-4xl text-white font-medium text-center italic my-4">{{ implode(' ', str_split(session('kode'))) }}
                </h1>
                
                <h1 class="text-sm text-pink-400 font-medium text-center italic mt-1">tunjukkan untuk menukarkan makanan</h1>
                <h1 class="text-sm text-white font-medium text-center italic mt-3">ikuti instagram kami</h1>
                <a href="https://www.instagram.com/berbagibitesjogja/"
                class="text-sm text-center block text-white font-medium text-center italic">@berbagibitesjogja</a>
            </div>
            @else
            <div class="w-full rounded-lg bg-pink-800 mt-8 py-5 px-6">
                <h1 class="text-2xl text-white font-semibold text-center">RSVP Now</h1>
                <form action="/form" method="POST">
                    @csrf
                    <input type="number" name="form" value="{{ $form[0]->id }}" id="" class="hidden">
                    <input type="text" name="nama" id=""
                        class="bg-pink-800 w-full text-slate-100 mt-6 focus:outline-none" placeholder="Nama" required>
                    <div class="w-full h-px bg-pink-600 mt-1"></div>
                    <div class="relative w-full">
                        <span class="absolute left-0 bottom-0 text-slate-100">+62</span>
                        <input type="text" name="telepon" id=""
                            class="bg-pink-800 w-full text-slate-100 mt-6 pl-8 focus:outline-none" placeholder="Nomor Whatsapp"
                            required>
                            
                        </div>
                        <div class="w-full h-px bg-pink-600 mt-1"></div>
                        @error('telepon')
                        <p class="text-xs italic font-thin text-pink-200">Silahkan masukkan format telepon yang benar</p>                            
                        @enderror
                    <select class="bg-pink-800 w-full text-slate-100 mt-6 focus:outline-none"
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
                    <div class="w-full h-px bg-pink-600 mt-1"></div>
                    <input type="submit" value="Submit"
                        class="w-full bg-white rounded-md p-1 text-lg font-bold mt-10 text-pink-800">
                </form>
            </div>
            @endif
            {{-- kuota  --}}
            <h1 class="text-pink-900 text-xl font-semibold text-center mt-10">Kuota</h1>
            <h1 class="text-white text-4xl font-bold text-center mt-4">{{ $form[0]->sisa }}</h1>
            {{-- terimakasih  --}}
        @else
            <div class="w-full rounded-lg bg-pink-800 mt-8 py-5 px-6">
                <h1 class="text-xl text-white font-medium text-center italic">Maaf, belum ada food rescue hari ini</h1>
                <h1 class="text-md text-white font-medium text-center italic mt-3">ikuti instagram kami</h1>
                <a href="https://www.instagram.com/berbagibitesjogja/"
                    class="text-sm text-center block text-white font-medium text-center italic">@berbagibitesjogja</a>
            </div>
        @endif
    </div>
@endsection
