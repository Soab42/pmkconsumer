<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ConsumerBillPaid extends Model
{
    protected $primaryKey = 'id';



    public function orders()
    {
        return $this->belongsTo(ConsumerOrder::class, 'Order ID');
    }
}
