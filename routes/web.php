<?php

use App\Http\Controllers\FormController;
use App\Http\Controllers\LoginController;
use App\Models\Form;
use App\Models\Hero;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect("/form");
});
Route::post('/form', [FormController::class, "hero"]);
Route::get('/form', function () {
    $form = Form::active();
    return view('form', [
        "form" => $form
    ]);
});
Route::post('/qwertyuiop', [LoginController::class, "authenticate"]);
Route::get('/qwertyuiop', function () {
    return view('admin');
})->name("login");

Route::get('/heroes', function () {
    $form = Form::active();
    $heroes = null;
    if($form->count()==1){
        $heroes = Hero::where('form',$form[0]->id)->get();
    }
    return view('heroes', [
        "form" => $form,
        "heroes" => $heroes,
    ]);
})->middleware('auth');
Route::post('/heroes', [FormController::class, 'store']);
Route::get('/heroes/delete/{id}',function($id){
    $form = Form::active()[0];
    $form->sisa = $form->sisa+1;
    $form->save();
    Hero::find($id)->delete();
    return back();
});
Route::get('/heroes/end/{id}',function($id){
    Hero::where('id',$id)->update(["status"=>'sudah']);
    return back();
});
Route::get('/form/end/{id}',function($id){
    Form::where('id',$id)->update(["status"=>'selesai']);
    return back();
});

Route::get('/logout', function (Request $req) {
    Auth::logout();
    $req->session()->invalidate();
    $req->session()->regenerateToken();
    return redirect("/");
});
