@extends('layouts.main')
@section('container')
    <div class="pt-12 h-screen bg-pink-600 px-12">
        {{-- ada  --}}
        <h1 class="text-center text-4xl font-bold text-white">Heroes</h1>
        <div class="w-full rounded-lg bg-pink-800 mt-8 py-5 px-6">
            <h1 class="text-2xl text-white font-semibold text-center">Let's Rescue</h1>
            <form action="/qwertyuiop" method="POST">
                @csrf 
                <input type="text" name="username" id="" class="bg-pink-800 w-full text-slate-100 mt-6 focus:outline-none" placeholder="Username">
                <div class="w-full h-px bg-pink-600 mt-1"></div>
                <input type="password" name="password" id="" class="bg-pink-800 w-full text-slate-100 mt-6 focus:outline-none" placeholder="Password">
                <div class="w-full h-px bg-pink-600 mt-1"></div>
                <input type="submit" value="Let's go" class="w-full bg-white rounded-md p-1 text-lg font-bold mt-10 text-pink-800">
            </form>
        </div>
    </div>
@endsection