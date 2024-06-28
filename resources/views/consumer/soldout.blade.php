@push('title')
<title>PMK | Consumer Sold Out</title>
@endpush
<x-app-layout>
  
    <x-slot name="header">
        <div class="flex justify-between gap-40 items-center bg-gradient-to-r from-emerald-500 from-20% via-sky-500 via-30% to-blue-400 to-90% px-4 rounded-md" >
            <h1 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
                {{ __('Consumer Sold Out') }}

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
    
               
                <button class='animated-button w-20'>Search</button>
            </form>
           
            
            <x-secondary-button
            x-data=""
            x-on:click.prevent="$dispatch('open-modal', 'confirm-update-soldout')"
            >
                {{ __('Update Soldout') }}
            </x-secondary-button>
        </div>
    </x-slot>
    <div class="modal h-0 overflow-hidden ">
        <x-modal name="confirm-update-soldout"  focusable>
      @include('upload.soldout');
       </x-modal>
    </div>









    <div class="py-6">
        <div class="max-w-8xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100 flex flex-col">  
                    @if ($data->isEmpty()) 
                    <p class="flex justify-center items-center text-[5rem] text-red-400 h-full">No data found</p>
                    @else       
                        <table class="border-collapse border border-black">
                            <thead class="bg-sky-700 px-2">
                                @foreach ($data->first()->getAttributes() as $key => $value)
                                <td class="td">{{ $key }}</td>
                                @endforeach
                            </thead>
                            <tbody>
                                @foreach ($data as $soldout)
                                <tr class="text-center">
                                    @foreach ($soldout->getAttributes() as $key => $value)
                                        <td class="td">{{$value}}</td>
                                    @endforeach
                                </tr>
                                @endforeach
                            </tbody>
                            <tfoot class="text-gray-900">
                                <tr class="bg-sky-700 text-center">
                                    <td class="td text-right px-4 text-[1.1rem] " colspan="8">Total</td>
                                    <td class="td">{{$data->sum('Product Price')}}</td>
                                    <td class="td">-</td>
                                    <td class="td">{{$data->sum('Salable Price')}}</td>
                                    <td class="td">{{$data->sum('Purchase Price')}}</td>
                                    <td class="td">                                           {{$data->sum('Staff Comission')}}</td>
                                    </td>
                                    <td class="td"></td>
                                    <td class="td"></td>
                                </tr>
                                <tr class="bg-sky-700 text-center">
                                    <td class="td text-right px-4 text-[1.1rem] " colspan="8">Grand Total</td>
                                    <td class="td">{{$grandTotal['Product Price']}}</td>
                                    <td class="td">-</td>
                                    <td class="td">{{$grandTotal['Salable Price']}}</td>
                                    <td class="td">{{$grandTotal['Purchase Price']}}</td>
                                    <td class="td">                                           {{$grandTotal['Staff Comission']}}</td>
                                    </td>
                                    <td class="td"></td>
                                    <td class="td"></td>
                                </tr>
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