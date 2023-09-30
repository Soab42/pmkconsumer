@push('title')
    <title>PMK | Consumer Transfer from</title>
@endpush

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Consumer Transfer To This Branch') }}
        </h2>
    </x-slot>
   
    
    <div class="py-6">
        <div class="max-w-8xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">  
                                
                        <table class="border-collapse border border-black">
                            <thead class="bg-sky-700 px-2 text-center">
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
                                    <td class="td text-right px-4 text-[1.1rem] " colspan="10">Total</td>
                                    <td class="td">{{$data->sum('Check Amount')}}</td>
                                    <td class="td">-</td>
                                    <td class="td">{{$data->sum('Product quantity')}}</td>
                                    <td class="td">{{$data->sum('Product Purchase Price')}}</td>
                                    <td class="td"></td>
                                    </td>
                                    <td class="td"></td>
                                    <td class="td"></td>
                                   
                                </tr>
                                <tr class="bg-sky-700 text-center">
                                    <td class="td text-right px-4 text-[1.1rem] " colspan="10">Grand Total</td>
                                    <td class="td">{{$grandTotal['Check Amount']}}</td>
                                    <td class="td">-</td>
                                    <td class="td">{{$grandTotal['Product quantity']}}</td>
                                    <td class="td">{{$grandTotal['Product Purchase Price']}}</td>
                                    <td class="td"></td>
                                    </td>
                                    <td class="td"></td>
                                    <td class="td"></td>
                                </tr>
                        </table>
                        <div class="mt-3">
                            {{$data->links()}}
                        </div>
                </div>
            </div>
        </div>
    </div>
      
</x-app-layout>