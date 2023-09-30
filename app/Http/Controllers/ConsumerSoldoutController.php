<?php

namespace App\Http\Controllers;

use App\Models\ConsumerSoldout;
use Illuminate\Http\Request;

class ConsumerSoldoutController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $branchName = $request->input('branch');
        $distributor = $request->input('distributor');
        $productType = $request->input('type');
        $dataQuery = ConsumerSoldout::query();
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
            &&  $dataQuery->where('Distrivutor Name', $distributor);

        validation($productType, 'type')
            && $dataQuery->where('Product Name', $productType);

        $data = $dataQuery->paginate(15);

        $grandTotal = ConsumerSoldout::grandTotal();
        // return $data;
        return view('consumer.soldout', compact('data', 'grandTotal'));
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
    public function show(ConsumerSoldout $consumerSoldout)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ConsumerSoldout $consumerSoldout)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ConsumerSoldout $consumerSoldout)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ConsumerSoldout $consumerSoldout)
    {
        //
    }
}
