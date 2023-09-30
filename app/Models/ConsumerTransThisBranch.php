<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ConsumerTransThisBranch extends Model
{
    use HasFactory;
    protected $table = 'consumer_trans_this_branches';

    public function product()
    {
        return $this->belongsTo(ConsumerProduct::class, 'Recieved ID');
    }
    public static function grandTotal()
    {
        return [
            'Check Amount' => self::sum('Check Amount'),
            'Product quantity' => self::sum('Product quantity'),
            'Product Purchase Price' => self::sum('Product Purchase Price'),
        ];
    }
}
