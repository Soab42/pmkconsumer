<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ConsumerOrder;

class OrderController extends Controller
{
    public function index(Request $request)
    {
        $branchName = $request->input('branch');
        $distributor = $request->input('distributor');
        $productType = $request->input('type');
        $bill = $request->input('bill');

        $dataQuery = ConsumerOrder::with('billPaid');

        function validation($variable, $emptyValue)
        {
            if (!empty($variable) && $variable != 'select ' . $emptyValue) {
                return true;
            }
            return false;
        };

        customValidation($branchName, 'branch')
            && $dataQuery->where('Branch name', $branchName);

        validation($distributor, 'distributor')
            &&  $dataQuery->where('Distributor Name', $distributor);

        validation($productType, 'type')
            && $dataQuery->where('Product Name', $productType);

        validation($bill, 'bill')
            && $dataQuery->where('Bill Pay', $bill);


        $data = $dataQuery->paginate(15);

        $totalAmounts = ConsumerOrder::calculateOrderTotal($branchName, $distributor, $productType, $bill);

        return view('consumer.order', compact('data', 'totalAmounts'));
    }
    public function getBranchName(Request $request)
    {
        // Get the selected option value from the request
        $branchName = $request->input('branchName');

        // Retrieve data from the model based on the selected option
        $nextOrderID = ConsumerOrder::getNextOrderID($branchName);

        return $nextOrderID;
    }
}
