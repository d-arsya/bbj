<?php

namespace App\Http\Controllers;

use App\Models\Form;
use App\Models\Hero;
use Illuminate\Http\Request;

class FormController extends Controller
{
    public function store(Request $request)
    {
        Form::create([
            "donatur" => $request["donatur"],
            "kuota" => $request["kuota"],
            "sisa" => $request["kuota"],
            "close" => $request["close"],
            "status" => "aktif",
        ]);
        return back();
    }
    public function hero(Request $request)
    {
        $form = Form::find($request["form"]);
        if($form->sisa==0){
            return back();
        }
        $request->validate([
            "telepon"=>'regex:/^8/'
        ]);
        $kode = $this->generate();
        Hero::create([
            "nama" => $request["nama"],
            "telepon" => "62".$request["telepon"],
            "asal" => $request["asal"],
            "form" => $request["form"],
            "kode" => $kode,
            "status" => "belum",
        ]);
        $form->sisa = $form->sisa - 1;
        $form->save();
        session(['form' => $form->id]);
        session(['kode' => $kode]);
        return back();
    }
    public function generate()
    {
        // $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $characters = '1234567890';
        $charactersLength = strlen($characters);
        $uniqueString = '';

        for ($i = 0; $i < 6; $i++) {
            $index = rand(0, $charactersLength - 1);
            $uniqueString .= $characters[$index];
        }

        return $uniqueString;
    }
}
