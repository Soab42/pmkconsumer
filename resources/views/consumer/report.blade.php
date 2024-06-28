@push('title')
    <title>PMK | Consumer Order</title>
@endpush
<x-app-layout>
    <x-slot name="header">
            <div class="flex justify-between gap-20 items-center bg-gradient-to-r from-emerald-500 from-20% via-sky-500 via-30% to-blue-400 to-90% px-4 rounded-md">
                <h1 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
                    {{$distributorName}} Report {{$branchNameS}}
                </h1>
                <form action="" method="get" class='flex gap-2 p-1'>
                    <select name="branch" class='selectInput' >
                        <option value="" class='px-1 w-40 text-center cursor-pointer rounded-md '>
                            Select Branch
                        </option>
                    @foreach ($branchNames as $branch)
                            
                            <x-option value="{{$branch}}" selectedValue="{{ request('branch') }}">
                                {{$branch}}
                            </x-option>
                            
                    @endforeach
        
                    </select>
                    <select name="distributor" class='selectInput'>
                        <option value="" class='px-1 w-40 text-center  cursor-pointer rounded-md'>
                            Select distributor</option>
                            @foreach ($distributorNames as $distributor)
                            
                            <x-option value="{{$distributor}}" selectedValue="{{ request('distributor') }}">
                                {{$distributor}}
                            </x-option>

                            @endforeach
        
                    </select>
                    <input type="date" name="from" id="from" class='selectInput' value="{{ request('from') }}">
                    <input type="date" name="to" id="to" class='selectInput' value="{{ request('to') }}">
                    <button class='animated-button w-20'>Show</button>
                </form>
            <div>       
    </x-slot>

@php
    $allBranchData = [];
@endphp
    <div class="py-6 ">
        <div class="max-w-8xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100 relative h-[80vh] mb-2 overflow-scroll"> 
                    
                    @php
                        $slNo = 1; // Initialize the SL No counter
                        $products =
                            [
                                'TV' => ['Smart TV', 'LED TV'],
                                'Fridge' => ['Refrigerator'],
                                'AC' => ['Air Conditioner'],
                                'WashingMachine' => ['Washing Machine'],
                                'SwingMachine' => ['Sewing Machine'],
                                'Others' => ['Microwave Oven', 'Rice Cooker'],
                            ];
                   @endphp
                       <table class=" opacity-70 text-center ">
                        <thead class="bg-gradient-to-r from-emerald-400 from-20% via-purple-500 to-sky-400 text-gray-800 sticky -top-6">
                            <tr class='toprow'>
                                <th class='tdr' rowspan='2'>sl</th>
                                <th class='tdr'  rowspan='2'>Branch Name</th>
                                <th class='tdr'  rowspan='2'>Products Details</th>
                                <th class='tdr' colspan ='2'>Cumilitive Recived</th>
                                <th class='tdr' colspan ='5'>Current Month sold</th>
                                <th class='tdr' colspan ='5'>Cumilitive sold</th>
                                <th class='tdr' colspan ='2'>InStock</th>
                                <th class='tdr' colspan ='2'>Paid To Ho</th>
                                <th class='tdr' rowspan='2'>Remarks</th>
                            </tr>
                            <tr class='toprow'>
                                <th class='tdr'>Num of product</th>
                                <th class='tdr'>pruchase Value</th>
                                <th class='tdr'>Num of product</th>
                                <th class='tdr'>Soldout Value</th>
                                <th class='tdr'>Purchase Value</th>
                                <th class='tdr'>Staff Incentive</th>
                                <th class='tdr'>Net Profit</th>
                                <th class='tdr'>Num of product</th>
                                <th class='tdr'>Soldout Value</th>
                                <th class='tdr'>Purchase Value</th>
                                <th class='tdr'>Staff Incentive</th>
                                <th class='tdr'>Net Profit</th>
                                <th class='tdr'>Number Of Product</th>
                                <th class='tdr'>Amount</th>
                                <th class='tdr'>Number Of Product</th>
                                <th class='tdr'>Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            @foreach ($ZoneData as $branchName => $branchData)
                                @foreach ($products as $category => $productNames)
                                    @php
                                        $categoryCount = 0;
                                        $categoryPrice = 0;

                                        $categoryCmSalesCount = 0;
                                        $categoryCmSalesPrice = 0;
                                        $categoryCmPurchasePrice = 0;
                                        $categoryCmStaffComission = 0;
                                        $categoryCmNetProfit = 0;

                                        $categorySalesCount = 0;
                                        $categorySalesPrice = 0;
                                        $categoryPurchasePrice = 0;
                                        $categoryStaffComission = 0;
                                        $categoryNetProfit = 0;

                                        $categoryInStockCount = 0;
                                        $categoryInStockValue = 0;

                                        $categoryPaidCount = 0;
                                        $categoryPaidValue = 0;
                                    @endphp

                                    @foreach ($productNames as $productName)
                                        @foreach ( $branchData as $row)
                                            @php
                                                if ($row->product_name == $productName){ 
                                                    $categoryCount += $row->product_count;
                                                    $categoryPrice += $row->Purchase_Value;

                                                    $categoryCmSalesCount += $row->cmSalesCount;
                                                    $categoryCmSalesPrice += $row->cmSalesPrice;
                                                    $categoryCmPurchasePrice += $row->cmPurchasePrice;
                                                    $categoryCmStaffComission += $row->cmStaffComission;
                                                    $categoryCmNetProfit += $row->cmNetProfit;

                                                    $categorySalesCount += $row->SalesCount;
                                                    $categorySalesPrice += $row->SalesPrice;
                                                    $categoryPurchasePrice += $row->PurchasePrice;
                                                    $categoryStaffComission += $row->StaffComission;
                                                    $categoryNetProfit += $row->NetProfit;

                                                    $categoryInStockCount += $row->InStockCount;
                                                    $categoryInStockValue += $row->InStockValue;

                                                    $categoryPaidCount += $row->totalPaidCount;
                                                    $categoryPaidValue += $row->TotalPaidAmount;
                                                 }
                                            @endphp
                                            
                                        @endforeach

                                        @php
                                        
                                            $allBranchData[$branchName][$category]['count'] = $categoryCount;
                                            $allBranchData[$branchName][$category]['price'] = $categoryPrice;


                                            $allBranchData[$branchName][$category]['cmsalesCount'] = $categoryCmSalesCount;
                                            $allBranchData[$branchName][$category]['cmsalesPrice'] = $categoryCmSalesPrice;
                                            $allBranchData[$branchName][$category]['cmpurchasePrice'] = $categoryCmPurchasePrice;
                                            $allBranchData[$branchName][$category]['cmstaffComission'] = $categoryCmStaffComission;
                                            $allBranchData[$branchName][$category]['cmnetProfit'] = $categoryCmNetProfit;


                                            $allBranchData[$branchName][$category]['salesCount'] = $categorySalesCount;
                                            $allBranchData[$branchName][$category]['salesPrice'] = $categorySalesPrice;
                                            $allBranchData[$branchName][$category]['purchasePrice'] = $categoryPurchasePrice;
                                            $allBranchData[$branchName][$category]['staffComission'] = $categoryStaffComission;
                                            $allBranchData[$branchName][$category]['netProfit'] = $categoryNetProfit;

                                            $allBranchData[$branchName][$category]['inStockCount'] = $categoryInStockCount;
                                            $allBranchData[$branchName][$category]['inStockValue'] = $categoryInStockValue;

                                            $allBranchData[$branchName][$category]['paidCount'] = $categoryPaidCount;
                                            $allBranchData[$branchName][$category]['paidValue'] = $categoryPaidValue;
                
                                        @endphp
                                    @endforeach
                                @endforeach
                           
                            @endforeach
                            
                            @foreach ($ZoneData as $branchName=> $branchData)
                                <tr>
                                    <td class='tdr' rowspan='7'>{{$slNo}}</td>
                                    <td class='tdr' rowspan='7'>{{$branchName}}</td>
                                </tr>
                                @foreach ($allBranchData[$branchName] as $category => $data)

                                    <tr>
                                    <td class='tdr'>{{$category}}</td>
                                    <td class='tdr'>{{$data['count']}}</td>
                                    <td class='tdr'>{{$data['price']}}</td>
                                    {{-- <td class='tdr' colspan='5'></td> --}}
                                    <td class='tdr'>{{$data['cmsalesCount']}}</td>
                                    <td class='tdr'>{{$data['cmsalesPrice']}}</td>
                                    <td class='tdr'>{{$data['cmpurchasePrice']}}</td>
                                    <td class='tdr'>{{$data['cmstaffComission']}}</td>
                                    <td class='tdr'>{{$data['cmnetProfit']}}</td>

                                    <td class='tdr'>{{$data['salesCount']}}</td>
                                    <td class='tdr'>{{$data['salesPrice']}}</td>
                                    <td class='tdr'>{{$data['purchasePrice']}}</td>
                                    <td class='tdr'>{{$data['staffComission']}}</td>
                                    <td class='tdr'>{{$data['netProfit']}}</td>

                                    <td class='tdr'>{{$data['inStockCount']}}</td>
                                    <td class='tdr'>{{$data['inStockValue']}}</td>

                                    <td class='tdr'>{{$data['paidCount']}}</td>
                                    <td class='tdr'>{{$data['paidValue']}}</td>
                                    <td class='tdr'></td>                               
                                    </tr>
                                
                                @endforeach
                                <tr id={{$branchName}} class="bg-gradient-to-r from-emerald-400 from-20% via-purple-500 to-sky-400 text-gray-800 text-lg font-bold tracking-wide">
                                    <td class="tdr text-sm" colspan="3">Sub Total</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'count'))}}</td>  
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'price'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'cmsalesCount'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'cmsalesPrice'))}}</td>
                                   
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'cmpurchasePrice'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'cmstaffComission'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'cmnetProfit'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'salesCount'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'salesPrice'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'purchasePrice'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'staffComission'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'netProfit'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'inStockCount'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'inStockValue'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'paidCount'))}}</td>
                                    <td class="tdr">{{array_sum(array_column($allBranchData[$branchName], 'paidValue'))}}</td>
                                    <td class="tdr"></td>
                                   
                                </tr>
                                    
                                @php
                                    $slNo++;

                                    // echo "<pre>"; print_r($allBranchData);   
                                @endphp
                            @endforeach
                                        @php
                                            function grandTotal($array, $value){
                                                $grandTotal = 0;
                                                    foreach ($array as $branchName => $data) {
                                                        $total = array_sum(array_column($array[$branchName], $value));
                                                        $grandTotal += $total;
                                                    }
                                                    return $grandTotal;
                                                }
                                                function categoryGrandTotal($array, $category, $key) {
                                                            $grandTotal = 0;
                                                            foreach ($array as $branchName => $data) {
                                                                if (isset($data[$category][$key])) {
                                                                    $grandTotal += $data[$category][$key];
                                                                }
                                                            }
                                                            return $grandTotal;
                                                        }

                                        @endphp
                                 <td class="tdr text-sm" colspan="2" rowspan="7">Grand Total</td>
                                @foreach ($products as $category => $productNames) 
                                <tr>
                    
                                    <td class='tdr'>{{$category}}</td>
                                    <td class='tdr'>{{categoryGrandTotal($allBranchData,$category,'count')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'price')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'cmsalesCount')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'cmsalesPrice')}}</td>
                                
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'cmpurchasePrice')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'cmstaffComission')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'cmnetProfit')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'salesCount')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'salesPrice')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'purchasePrice')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'staffComission')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'netProfit')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'inStockCount')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'inStockValue')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'paidCount')}}</td>
                                    <td class="tdr">{{categoryGrandTotal($allBranchData,$category, 'paidValue')}}</td>
                                    <td class="tdr"></td>
                                  
                                </tr>
                                
                            @endforeach


                            <tr id={{$branchName}} class="bg-gradient-to-r from-emerald-400 from-20% via-purple-500 to-sky-400 text-gray-800 text-lg font-bold tracking-wide">
                                <td class="tdr text-sm" colspan="3">Grand Total</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'count')}}</td>  
                                <td class="tdr">{{grandTotal($allBranchData, 'price')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'cmsalesCount')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'cmsalesPrice')}}</td>
                               
                                <td class="tdr">{{grandTotal($allBranchData, 'cmpurchasePrice')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'cmstaffComission')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'cmnetProfit')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'salesCount')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'salesPrice')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'purchasePrice')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'staffComission')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'netProfit')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'inStockCount')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'inStockValue')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'paidCount')}}</td>
                                <td class="tdr">{{grandTotal($allBranchData, 'paidValue')}}</td>
                                <td class="tdr"></td>
                               
                            </tr>
                        </tbody>
                    </table>
                    

                </div>
                
            </div>
            
        </div>
    </div>

</x-app-layout>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    $(document).ready(function() {
        console.log('hi');
        var jsVariable = {!! json_encode($ZoneData) !!};
        console.log(jsVariable);
    });
    
</script>

           
             