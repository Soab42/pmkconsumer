<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ConsumerOrder;
use App\Models\Ledger;

class HealthAcController extends Controller
{
    public function index(Request $request)
    {
        $dataQuery = Ledger::query();
      
        $data = $dataQuery->paginate(15);
        $AccountNames = Ledger::AccountNames();
        return view('consumer.ledger', compact('data', 'AccountNames'));
    }

  
}