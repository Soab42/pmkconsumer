<?php
// app/Http/Controllers/CSVUploadController.php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\LedgerImport;
class CSVUploadController extends Controller
{
    public function index()
    {
        return view('upload.order');
    }

    public function uploadOrder(Request $request)
    {
        // Validate the file
        $validator = Validator::make($request->all(), [
            'csv_file' => 'required|file|mimes:csv,txt',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        }

        // Handle the uploaded file
        $path = $request->file('csv_file')->getRealPath();
        $data = array_map('str_getcsv', file($path));
        $header = array_shift($data);

        // Insert data into database
        foreach ($data as $row) {
            $rowData = array_combine($header, $row);
            // dd($rowData);
            try {
                DB::table('consumer_orders')->updateOrInsert(
                    ['Order ID' => $rowData['Order ID'],],
                    [
                        'Branch name' => $rowData['Branch name'],
                        'Order Date' => $rowData['Order Date'],
                        'Distributor Name' => $rowData['Distributor Name'],
                        'Product Name' => $rowData['Product Name'],
                        'Model No' => $rowData['Model No'],
                        'Order Status' => $rowData['Order Status'],
                        'Product Price' => $rowData['Product Price'],
                        'Order Quantity' => $rowData['Order Quantity'],
                        'Shiped Quantity' => $rowData['Shiped Quantity'],
                        'Received Quantity' => $rowData['Received Quantity'],
                        'Purchase Price' => $rowData['Purchase Price'],
                        'Status Change Date' => $rowData['Status Change Date'],
                        'Bill Pay' => $rowData['Bill Pay']
                       
                    ]
                );
                
            } catch (\Exception $e) {
                // Ignore duplicates
            }
        }

        return redirect()->route('upload.order')->with('success', 'CSV file uploaded successfully.');
    }


    public function uploadBill(Request $request)
    {
        // Validate the file
        $validator = Validator::make($request->all(), [
            'csv_file' => 'required|file|mimes:csv,txt',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        }

        // Handle the uploaded file
        $path = $request->file('csv_file')->getRealPath();
        $data = array_map('str_getcsv', file($path));
        $header = array_shift($data);

        // Insert data into database
        foreach ($data as $row) {
            $rowData = array_combine($header, $row);
            // dd($rowData);
            try {
                DB::table('consumer_bill_paids')->updateOrInsert(
                    ['Bill_Paid_ID' => $rowData['Bill Paid ID'],],
                    [
                        'Branch_name' => $rowData['Branch name'],
                        'Paid_Date' => $rowData['Paid Date'],
                        'Distributor' => $rowData['Distributor'],
                        'Order_Code' => $rowData['Order Code'],
                        'Bank_Name' => $rowData['Bank Name'],
                        'Checque_No' => $rowData['Checque No'],
                        'Paid_Amount' => $rowData['Paid Amount'],
                    ]
                );
                
            } catch (\Exception $e) {
                // Ignore duplicates
            }
        }

        return redirect()->route('order.index')->with('success', 'CSV file uploaded successfully.');
    }

    public function uploadProduct(Request $request)
    {
        // Validate the file
        $validator = Validator::make($request->all(), [
            'csv_file' => 'required|file|mimes:csv,txt',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        }

        // Handle the uploaded file
        $path = $request->file('csv_file')->getRealPath();
        $data = array_map('str_getcsv', file($path));
        $header = array_shift($data);

        // Insert data into database
        foreach ($data as $row) {
            $rowData = array_combine($header, $row);
            // dd($rowData);
            try {
                DB::table('consumer_products')->updateOrInsert(
                    ['Recieved ID' => $rowData['Recieved ID']],
                    [
                        'idcode' => $rowData['###'],
                        'Branch name' => $rowData['Branch name'],
                        'Product Recieved Date' => $rowData['Product Recieved Date'],
                        'Challan/Bill No' => $rowData['Challan/Bill No'],
                        'Order ID' => $rowData['Order ID'],
                        'Distributor Name' => $rowData['Distributor Name'],
                        'Product Name' => $rowData['Product Name'],
                        'Model No' => $rowData['Model No'],
                        'Product Status' => $rowData['Product Status'],
                        'Product Purchase Price' => $rowData['Product Purchase Price'],
                        'Product Salable Price' => $rowData['Product Salable Price'],
                        'Staff Comission' => $rowData['Staff Comission'],
                    ]
                );
                
            } catch (\Exception $e) {
                // Ignore duplicates
            }
        }

        return redirect()->route('product.index')->with('success', 'CSV file uploaded successfully.');
    }

    public function uploadSoldout(Request $request)
    {
        // Validate the file
        $validator = Validator::make($request->all(), [
            'csv_file' => 'required|file|mimes:csv,txt',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        }

        // Handle the uploaded file
        $path = $request->file('csv_file')->getRealPath();
        $data = array_map('str_getcsv', file($path));
        $header = array_shift($data);

        // Insert data into database
        foreach ($data as $row) {
            $rowData = array_combine($header, $row);
            // dd($rowData);
            try {
                DB::table('consumer_soldouts')->updateOrInsert(
                    [  'Soldout ID' => $rowData['Soldout ID']],
                    [
                        'Branch name' => $rowData['Branch name'],
                      
                        'Product ID' => $rowData['Product ID'],
                        'Soldout Date' => $rowData['Soldout Date'],
                        'Order ID' => $rowData['Order ID'],
                        'Customer Name' => $rowData['Customer Name'],
                        'Customer ID' => $rowData['Customer ID'],
                        'Product Price' => $rowData['Product Price'],
                        'Payment Method' => $rowData['Payment Method'],
                        'Salable Price' => $rowData['Salable Price'],
                        'Purchase Price' => $rowData['Purchase Price'],
                        'Staff Comission' => $rowData['Staff Comission'],
                        'Distrivutor Name' => $rowData['Distrivutor Name'],
                        'Product Name' => $rowData['Product Name'],
                    ]
                );
                
            } catch (\Exception $e) {
                // Ignore duplicates
            }
        }

        return redirect()->route('soldout.index')->with('success', 'CSV file uploaded successfully.');
    }

    public function uploadTransFrom(Request $request)
    {
        // Validate the file
        $validator = Validator::make($request->all(), [
            'csv_file' => 'required|file|mimes:csv,txt',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        }

        // Handle the uploaded file
        $path = $request->file('csv_file')->getRealPath();
        $data = array_map('str_getcsv', file($path));
        $header = array_shift($data);

        // Insert data into database
        foreach ($data as $row) {
            $rowData = array_combine($header, $row);
            // dd($rowData);
            try {
                DB::table('consumer_trans_from_branches')->updateOrInsert(
                    ['Transfer Code' => $rowData['Transfer Code']],
                    [
                        'Transfer Date' => $rowData['Transfer Date'],
                        'Product Code' => $rowData['Product Code'],
                        'Order ID' => $rowData['Order ID'],
                        'Model No' => $rowData['Model No'],
                        'Transfer to Branch' => $rowData['Transfer to Branch'],
                        'Transfer From Branch' => $rowData['Transfer From Branch'],
                        // 'Bank Name and Branch' => $rowData['Bank Name and Branch'],
                        'Check No' => $rowData['Check No'],
                        'Check Amount' => $rowData['Check Amount'],
                        'Transfer Status' => $rowData['Transfer Status'],
                        'Product Purchase Price' => $rowData['Product Purchase Price'],
                        'Distributor Name' => $rowData['Distributor Name'],
                        'Product Category' => $rowData['Product Category'],
                        'Product quantity' => $rowData['Product quantity'],
                    ]
                );
                
                
            } catch (\Exception $e) {
                // Ignore duplicates
            }
        }

        return redirect()->route('transfrom.index')->with('success', 'CSV file uploaded successfully.');
    }

    public function uploadTransThis(Request $request)
    {
        // Validate the file
        $validator = Validator::make($request->all(), [
            'csv_file' => 'required|file|mimes:csv,txt',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        }

        // Handle the uploaded file
        $path = $request->file('csv_file')->getRealPath();
        $data = array_map('str_getcsv', file($path));
        $header = array_shift($data);

        // Insert data into database
        foreach ($data as $row) {
            $rowData = array_combine($header, $row);
            // dd($rowData);
            try {
                DB::table('consumer_trans_this_branches')->updateOrInsert(
                    ['Transfer Code' => $rowData['Transfer Code']],
                    [
                        'Transfer Date' => $rowData['Transfer Date'],
                        'Product Code' => $rowData['Product Code'],
                        'Order ID' => $rowData['Order ID'],
                        'Transfer to Branch' => $rowData['Transfer to Branch'],
                        'Transfer From Branch' => $rowData['Transfer From Branch'],
                        'Bank Name and Branch' => $rowData['Bank Name and Branch'],
                        'Check No' => $rowData['Check No'],
                        'Check Amount' => $rowData['Check Amount'],
                        'Transfer Status' => $rowData['Transfer Status'],
                        'Product Purchase Price' => $rowData['Product Purchase Price'],
                        'Distributor Name' => $rowData['Distributor Name'],
                        'Product Category' => $rowData['Product Category'],
                        'Product quantity' => $rowData['Product quantity'],
                    ]
                );
                
            } catch (\Exception $e) {
                // Ignore duplicates
            }
        }

        return redirect()->route('transthis.index')->with('success', 'CSV file uploaded successfully.');
    }
    
    public function uploadLedger(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'csv_file' => 'required|file|mimes:csv,txt',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        }

        Excel::import(new LedgerImport, $request->file('csv_file'));

        return redirect()->route('ledger.upload')->with('success', 'CSV file uploaded successfully.');
    }
   
}