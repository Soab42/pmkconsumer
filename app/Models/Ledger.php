<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ledger extends Model
{
    use HasFactory;

    protected $primaryKey = 'id';

    public function data()
    {
        return self::class;
    }

    public static function AccountNames()
    {
        $debit= self::distinct()->pluck('Debit Account')->toArray();
        $credit= self::distinct()->pluck('Credit Account')->toArray();
        // remove "Debit Account", "Credit Account", "cash in hand", "cash at bank" from array
        $debit = array_diff($debit, ['Debit Account', 'Credit Account', 'Cash in Hand', 'Cash at Bank']);
        $credit = array_diff($credit, ['Debit Account', 'Credit Account', 'Cash in Hand', 'Cash at Bank']);
        return array_merge($debit, $credit);
        
    }
}