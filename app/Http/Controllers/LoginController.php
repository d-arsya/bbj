<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function authenticate(Request $request){
        $ceredentials = $request->validate([
            "username"=>'required',
            "password"=>'required',
        ]);
        if(Auth::attempt($ceredentials)){
            $request->session()->regenerate();
            return redirect()->intended('/heroes');
        }
        return back()->withErrors(["error"=>'gagal']);
    }
}
