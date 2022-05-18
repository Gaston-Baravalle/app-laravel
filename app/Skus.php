<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Skus extends Model{
	protected $table = 'skus';
    protected $fillable = [
        'SkuId','NameComplete','ProductId'
    ];
}