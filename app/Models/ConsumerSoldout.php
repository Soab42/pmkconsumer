<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ConsumerSoldout extends Model
{
    use HasFactory;
    protected $primaryKey = 'Recieved ID';

    public function product()
    {
        return $this->belongsTo(ConsumerProduct::class, 'Recieved ID');
    }

    public static function grandTotal()
    {
        return [
            'Product Price' => self::sum('Product Price'),
            'Salable Price' => self::sum('Salable Price'),
            'Purchase Price' => self::sum('Purchase Price'),
            'Staff Comission' => self::sum('Staff Comission')
        ];
    }
}
