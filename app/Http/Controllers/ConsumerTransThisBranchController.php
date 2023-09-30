<?php

namespace App\Http\Controllers;

use App\Models\ConsumerTransThisBranch;
use Illuminate\Http\Request;

class ConsumerTransThisBranchController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function index()
    {
        $data = ConsumerTransThisBranch::paginate(15);

        $grandTotal = ConsumerTransThisBranch::grandTotal();



        return view('consumer.transthis', compact('data', 'grandTotal'));
        //    return $data;
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
    public function show(ConsumerTransThisBranch $consumerTransThisBranch)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ConsumerTransThisBranch $consumerTransThisBranch)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ConsumerTransThisBranch $consumerTransThisBranch)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ConsumerTransThisBranch $consumerTransThisBranch)
    {
        //
    }
}
