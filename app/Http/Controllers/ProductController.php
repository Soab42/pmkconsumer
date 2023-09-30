<?php

namespace App\Http\Controllers;

use App\Models\ConsumerProduct;
use App\Models\ConsumerSoldout;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $branchName = $request->input('branch');
        $distributor = $request->input('distributor');
        $productType = $request->input('type');
        $status = $request->input('status');

        $dataQuery = ConsumerProduct::with('order', 'soldOut', 'transFrom', 'transThis');

        function validation($variable, $emptyValue)
        {
            if (!empty($variable) && $variable != 'select ' . $emptyValue) {
                return true;
            }
            return false;
        };

        customValidation($branchName, 'branch')
            && $dataQuery->where('Branch Name', $branchName);

        validation($distributor, 'distributor')
            &&  $dataQuery->where('Distributor Name', $distributor);

        validation($productType, 'type')
            && $dataQuery->where('Product Name', $productType);

        validation($status, 'status')
            && $dataQuery->where('Product status', $status);

        $data = $dataQuery->paginate(15);

        // Calculate subtotal by iterating over each item in the paginated data
        $SalablePrice = ConsumerSoldout::sum('Salable Price');


        // return $data;
        return view('consumer.product', compact('data', 'SalablePrice'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
