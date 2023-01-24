<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'food_id',
        'food_name',
        'user_id',
        'user_name',
        'price',
        'method',
        'tnx_id',
        'chef_id',
        'chef_name',
        'status'
    ];
}
