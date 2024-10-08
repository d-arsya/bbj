<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Form extends Model
{
    use HasFactory;
    protected $guarded = [];
    public static function scopeActive($query){
        return $query->where('status','aktif')->get();
    }
    public function heroes(){
        return $this->hasMany(Hero::class,'form','id')->get();
    }
}
