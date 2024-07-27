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
        $kode = $this->generate();
        Hero::create([
            "nama" => $request["nama"],
            "telepon" => $request["telepon"],
            "asal" => $request["asal"],
            "form" => $request["form"],
            "kode" => $kode,
            "status" => "belum",
        ]);
        $form = Form::find($request["form"]);
        $form->sisa = $form->sisa - 1;
        $form->save();
        session(['form' => $form->id]);
        session(['kode' => $kode]);
        return back();
    }
    public function generate()
    {
        $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $uniqueString = '';

        for ($i = 0; $i < 6; $i++) {
            $index = rand(0, $charactersLength - 1);
            $uniqueString .= $characters[$index];
        }

        return $uniqueString;
    }
}
