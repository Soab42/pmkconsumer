@push('title')
    <title>PMK | Consumer Product</title>
@endpush
<x-app-layout>
   
    <x-slot name="header">
        <div class="flex justify-between gap-20 items-center bg-gradient-to-r from-emerald-500 from-20% via-sky-500 via-30% to-blue-400 to-90% px-4 rounded-md">
            <h1 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
                {{ __('Consumer Product') }}
            </h1>
            <form action="" method="get" class='flex gap-2 p-1'>
                <select name="branch" class='selectInput'>
                    <option value="select branch" class='px-1 w-40 text-center cursor-pointer rounded-md '>
                        Select Branch
                    </option>
                   @foreach ($branchNames as $branch)
                        
                        <x-option value="{{$branch}}" selectedValue="{{ request('branch') }}">
                            {{$branch}}
                        </x-option>
                        
                   @endforeach
    
                </select>
                <select name="distributor" class='selectInput'>
                    <option value="select distributor" class='px-1 w-40 text-center  cursor-pointer rounded-md'>
                        Select distributor</option>
                        @foreach ($distributorNames as $distributor)
                           
                        <x-option value="{{$distributor}}" selectedValue="{{ request('distributor') }}">
                            {{$distributor}}
                        </x-option>

                        @endforeach
    
                </select>
                <select name="type" class='selectInput'>
                    <option value="select type" class='px-1 w-40 text-center  cursor-pointer rounded-md'>
                        Select Product Type</option>
                        @foreach ($productTypes as $productsType)
                            <x-option value="{{$productsType}}" selectedValue="{{ request('type') }}">
                                {{$productsType}}
                            </x-option>
                        @endforeach

    
                </select>
    
                <select name="status" class='selectInput'>
                    <option value="select status" class=' px-1 w-40 text-center  cursor-pointer rounded-md'>
                        Select product status</option>
                   @foreach ($productStatus as $product)
                   <x-option value="{{$product}}" selectedValue="{{ request('status') }}">
                    {{$product}}
                </x-option>
                   @endforeach
                </select>
                <button class='animated-button w-20'>Search</button>
            </form>
           
           
        
        <div>       
       
        </div>
    </x-slot>
    
{{-- {{ $data->first()}} --}}



<div class="py-6">
    <div class="max-w-8xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white  dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
            <div class="p-6 text-gray-900 dark:text-gray-100 flex flex-col ">
                @if ($data->isEmpty()) 
                    <p class="flex justify-center items-center text-[5rem] text-red-400 h-full">No data found</p>
                    @else
                <table class="border-collaps text-gray-400 ">
                    <thead class="table-light">
                        {{-- <caption>Table Name</caption> --}}
                    
                        <tr class=" bg-sky-600 text-gray-800">
                            <th class="td">sl</th>
                            <th class="td">Branch Name</th>
                            <th class="td">Recieved ID</th>
                            <th class="td">Distributor Name</th>
                            <th class="td">Product Type</th>
                            <th class="td">Product Status</th>
                            <th class="td">Product Purchase Price</th>
                            <th class="td">Product Salable Price</th>
                            <th class="td">Purchase/Transfer</th>
                            <th class="td">Customer Name</th>
                            <th class="td">Sold Amount</th>
                            <th class="td">Trans To</th>
                    
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                                @php
                                    $totals = [
                                        'Product Purchase Price'=> 0,
                                        'Product Salable Price' => 0,
                                        'Salable Price'=>0,
                                    ];
                                @endphp
                        @foreach ($data as $product)
                        {{-- {{$product}} --}}
                        @php
                         $totals['Product Purchase Price'] += intval($product['Product Purchase Price']);
                         $totals['Product Salable Price'] += intval($product['Product Salable Price']);
                        @endphp
                        <tr class="border border-black px-1 p-1">
                            <th class="td">{{$product->id}}</th>
                            <th class="td">{{$product['Branch name']}}</th>
                            <th class="td">{{$product['Recieved ID']}}</th>
                            <th class="td">{{$product['Distributor Name']}}</th>
                            <th class="td">{{$product['Product Name']}}</th>
                            <th class="td">{{$product['Product Status']}}</th>
                            <th class="td">{{$product['Product Purchase Price']}}</th>
                            <th class="td">{{$product['Product Salable Price']}}</th>
                            <th class="td">{{$product['Purchase/Transfer']}}</th>
                            <th class="td">
                                @if ($product->soldout)
                                {{ $product->soldout['Customer Name'] }}
                                @else
                                -
                                @endif
                            </th>
                            <th class="td">
                                @if ($product->soldout)
                                    @php
                                        $totals['Salable Price'] += intval($product->soldout['Salable Price']);
                                    @endphp
                                {{ $product->soldout['Salable Price'] }}
                                @else
                                -
                                @endif
                            </th>
                            <th class="td">
                                @if ($product->transthis)
                                {{ $product->transthis['Transfer to Branch'] }}
                                @else
                                -
                                @endif
                            </th>
                        </tr>
                        
                    @endforeach
                        <tr class="bg-sky-900 text-center">
                            <td class="td text-right text-[1.1rem] px-4" colspan="6">Total</td>
                            @foreach ($totals as $key => $total)
                                @if ($key !=='Salable Price')
                                    
                                <td class="td">{{ $total }}</td>
                                @endif               
                            @endforeach
                            <td class="td">-</td>
                            <td class="td">-</td>
                            <td class="td" >{{$totals['Salable Price']}}</td>
                            <td class="td" >-</td>
                        </tr>
                    </tbody>
                    <tfoot class="text-gray-900">
                        <tr class="bg-sky-700 text-center">
                            <td class="td text-right px-4 text-[1.1rem] " colspan="6"> Grand Total</td>
                            <td class="td">{{$product->sum('Product Purchase Price')}}</td>
                            <td class="td">{{$product->sum('Product Salable Price')}}</td>
                            <td class="td"></td>
                            <td class="td"></td>
                            <td class="td">             {{$SalablePrice}}                               
                            </td>
                            <td class="td"></td>
                        </tr>
                        
                    </tfoot>
                </table>
                @endif
                <div class="mt-3">
                    {{$data->withQueryString()->links()}}
                </div>
            </div>
        </div>
    </div>
</div>



</x-app-layout>
