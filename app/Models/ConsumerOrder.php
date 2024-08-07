<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class ConsumerOrder extends Model
{
    protected $primaryKey = 'Order ID';




    public static function calculateOrderTotal($branchName = null, $distributor = null, $productType = null, $bill = null)
    {
        $query = self::query();

        if (!empty($branchName)) {
            $query->where('Branch name', $branchName);
        }

        if (!empty($distributor)) {
            $query->where('Distributor Name', $distributor);
        }

        if (!empty($productType)) {
            $query->where('Product Name', $productType);
        }

        if (!empty($bill)) {
            $query->where('Bill Pay', $bill);
        }

        // Return the totals as an associative array
        return  [
            'ProductPriceTotal' => $query->sum('Product Price'),
            'OrderQuantityTotal' => $query->sum('Order Quantity'),
            'ShipedQuantityTotal' => $query->sum('Shiped Quantity'),
            'ReceivedQuantityTotal' => $query->sum('Received Quantity'),
            'PurchasePriceTotal' => $query->sum('Purchase Price'),
            'PaidAmountTotal' => ConsumerBillPaid::sum('Paid_Amount'),
        ];
    }



    public function billPaid()
    {
        return $this->hasOne(ConsumerBillPaid::class, 'Order_Code');
    }

    public function product()
    {
        return $this->hasMany(ConsumerProduct::class, 'Order ID');
    }
    public static function branch()
    {
        return self::distinct()->pluck('Branch name')->toArray();
    }
    public static function getNextOrderID($branchName)
    {

        // Find the maximum order ID for the selected branch
        $maxOrder = self::where('Branch name', $branchName)->max('Order ID');

        // If there are no orders for the branch, start from a default value like 1
        if ($maxOrder === null) {
            return 1;
        }

        // Increment the maximum order ID to get the next order ID
        return $maxOrder + 1;
    }
}