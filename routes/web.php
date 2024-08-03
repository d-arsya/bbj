<?php

use App\Http\Controllers\FormController;
use App\Http\Controllers\LoginController;
use App\Models\Form;
use App\Models\Hero;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    if(auth()->user())return redirect('/logout');
    return redirect("/form");
});

Route::middleware(['auth'])->group(function () {
    Route::post('/heroes', [FormController::class, 'store']);
    Route::get('/heroes', function () {
        $form = Form::orderBy('status','asc')->get();
        // dd($form[0]->status);
        $heroes = null;
        if($form[0]->status=='aktif'){
            $heroes = Hero::where('form',$form[0]->id)->orderBy('status','desc')->get();
        }
        return view('heroes', [
            "forms" => $form,
            "heroes" => $heroes,
        ]);
    });
    Route::get('/donation/{id}', [FormController::class, 'detail']);
    Route::post('/heroes/edit', [FormController::class, 'edit']);
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
        Hero::where('status','belum')->delete();
        return back();
    });
    
    Route::get('/logout', function (Request $req) {
        Auth::logout();
        $req->session()->invalidate();
        $req->session()->regenerateToken();
        return redirect("/");
    });
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

