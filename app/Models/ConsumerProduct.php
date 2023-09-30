<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ConsumerProduct extends Model
{
    use HasFactory;

    protected $primaryKey = 'Recieved ID';

    public function order()
    {
        return $this->belongsTo(ConsumerOrder::class, 'Order ID');
    }
    public function soldOut()
    {
        return $this->hasOne(ConsumerSoldout::class, 'Product ID');
    }
    public function transFrom()
    {
        return $this->hasOne(ConsumerTransFromBranch::class, 'Product Code');
    }

    public function transThis()
    {
        return $this->hasOne(ConsumerTransThisBranch::class, 'Product Code');
    }
}
