<?php

namespace App\Http\Controllers;

use App\Models\Form;
use App\Models\Hero;
use Illuminate\Http\Request;

class FormController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            "donatur"=>['required'],
            "kuota"=>['required','integer'],
        ]);
        Form::create([
            "donatur" => $request["donatur"],
            "kuota" => $request["kuota"],
            "sisa" => $request["kuota"],
            "maps" => $request["maps"]??'https://maps.app.goo.gl/qcD3VUYT1ynjysi19',
            "lokasi" => $request["lokasi"]??'Podocarpus Corner',
            "jam" => $request["jam"],
            "pengambilan" => $request["tanggal"],
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
    public function edit(Request $request){
        $form = Form::where('status','aktif')->first();
        if($request["metode"]=="tambah"){
            $form->sisa = $form->sisa + $request["jumlah"];
            $form->kuota = $form->kuota + $request["jumlah"];
        }else{
            $form->sisa = $form->sisa - $request["jumlah"];
            $form->kuota = $form->kuota - $request["jumlah"];
        }
        $form->save();    
        return back();   
    }
    public function detail(Request $request,$id){
        $donation = Form::find($id);
        $heroes = $donation->heroes();
        return view('donation',compact(["donation","heroes"]));
    }
}
