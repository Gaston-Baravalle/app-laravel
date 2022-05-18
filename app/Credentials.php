<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Credentials extends Model{
    protected $fillable = [
        'VTEX_accountName','VTEX_Key','VTEX_Token','Limite','Correos'
    ];
}