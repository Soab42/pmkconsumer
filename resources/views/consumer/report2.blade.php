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
    $sl= 0; 
@endphp
    <div class="py-6 ">
        <div class="max-w-8xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100 relative h-[80vh] mb-2 overflow-scroll"> 
                       <table class=" opacity-70 text-center ">
                        <thead class="bg-gradient-to-r from-emerald-400 from-20% via-purple-500 to-sky-400 text-gray-800 sticky -top-6">
                            <tr class='toprow'>
                                <th class='tdr' rowspan='2'>sl</th>
                                <th class='tdr'  rowspan='2'>Branch Name</th>
                                
                                <th class='tdr' colspan ='2'>Cumilitive Recived</th>
                                <th class='tdr' colspan ='5'>Current Month sold</th>
                                <th class='tdr' colspan ='3'>This year sold</th>
                                <th class='tdr' colspan ='5'>Cumilitive sold</th>
                                <th class='tdr' colspan ='2'>Due</th>

                                <th class='tdr' colspan ='2'>InStock</th>
                      
                            </tr>
                            <tr class='toprow'>

                                <th class='tdr'>Num of product</th>
                                <th class='tdr'>pruchase Value</th>


                                <th class='tdr'>Num of product</th>
                                <th class='tdr'>Soldout Value</th>
                                <th class='tdr'>Purchase Value</th>
                                <th class='tdr'>Staff Incentive</th>
                                <th class='tdr'>Net Profit</th>


                                <th class='tdr'>Tv</th>
                                <th class='tdr'>Fridge</th>
                                <th class='tdr'>Others</th>


                                <th class='tdr'>Num of product</th>
                                <th class='tdr'>Soldout Value</th>
                                <th class='tdr'>Purchase Value</th>
                                <th class='tdr'>Staff Incentive</th>
                                <th class='tdr'>Net Profit</th>

                                <th class='tdr'>Number Of Loanee</th>
                                <th class='tdr'>Amount</th>

                                <th class='tdr'>Number Of Product</th>
                                <th class='tdr'>Amount</th>

                            </tr>
                        </thead>
                        <tbody>

                          
                           
                            @foreach ($ZoneData as $branchName => $branchData)
                              @php
                            // dd($branchData);
                            $sl = $sl + 1;
                            @endphp
                            <tr>
                                <td class="tdr">{{ $sl }}</td>
                                <td class="tdr">{{ $branchName }}</td>

                                <td class="tdr">{{ $branchData['product_count'] }}</td>
                                <td class="tdr">{{ $branchData['Purchase_Value'] }}</td>


                                <td class="tdr">{{ $branchData['cmSalesCount'] }}</td>
                                <td class="tdr">{{ $branchData['cmSalesPrice'] }}</td>
                                <td class="tdr">{{ $branchData['cmPurchasePrice'] }}</td>
                                <td class="tdr">{{ $branchData['cmStaffComission'] }}</td>
                                <td class="tdr">{{ $branchData['cmNetProfit'] }}</td>

                                {{-- @if (isset($branchData['categoryCount']['TV'])) --}}
                                
                                {{-- <td class="tdr">{{ $branchData['categoryCount']['TV'] }}</td> --}}

                                <td class="tdr">{{ $branchData['tv'] }}</td>
                                <td class="tdr">{{ $branchData['fridge'] }}</td>
                                <td class="tdr">{{ $branchData['others'] }}</td>





                                <td class="tdr">{{ $branchData['SalesCount'] }}</td>
                                <td class="tdr">{{ $branchData['SalesPrice'] }}</td>
                                <td class="tdr">{{ $branchData['PurchasePrice'] }}</td>
                                <td class="tdr">{{ $branchData['StaffComission'] }}</td>
                                <td class="tdr">{{ $branchData['NetProfit'] }}</td>

                                <td class="tdr"></td>
                                <td class="tdr"></td>

                                <td class="tdr">{{ $branchData['InStockCount'] }}</td>
                                <td class="tdr">{{ $branchData['InStockValue'] }}</td>
                             
                              
                                <!-- Add other data as needed -->
                            </tr>
                <!-- If you need to display other related rows, do so here -->
                <!-- Example:
                <tr>
                    <td colspan="5">Additional row information</td>
                </tr>
                -->
            @endforeach
                          
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

           
             