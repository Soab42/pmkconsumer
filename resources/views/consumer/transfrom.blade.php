@push('title')
    <title>PMK | Consumer Transfer from</title>
@endpush

<x-app-layout>
    <x-slot name="header">
        <div class="w-full  h-16  w-[90vw] flex justify-between gap-40 items-center bg-gradient-to-r from-emerald-500 from-20% via-sky-500 via-30% to-blue-400 to-90% px-4 rounded-md">
            <h1 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
               {{ __('Consumer Transfer To This Branch') }}
        </h1>
        <x-secondary-button
        x-data=""
        x-on:click.prevent="$dispatch('open-modal', 'confirm-update-soldout')"
        >
            {{ __('Update Transfer from this Branch') }}
        </x-secondary-button>
        </div>
</x-slot>
<div class="modal h-0 overflow-hidden ">
    <x-modal name="confirm-update-soldout"  focusable>
  @include('upload.transfrom');
   </x-modal>
</div>
   
    
    <div class="py-6">
        <div class="max-w-8xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">  
                    @if ($data->isEmpty()) 
                    <p class="flex justify-center items-center text-[5rem] text-red-400 h-full">No data found</p>
                    @else  
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
                                    <td class="td"></td>
                                   
                                </tr>
                                <tr class="bg-sky-700 text-center">
                                    <td class="td text-right px-4 text-[1.1rem] " colspan="10">Grand Total</td>
                                    <td class="td">{{$grandTotal['Check Amount']}}</td>
                                    <td class="td">-</td>
                                    <td class="td">{{$grandTotal['Product quantity']}}</td>
                                    <td class="td">{{$grandTotal['Product Purchase Price']}}</td>
                                    <td class="td"></td>
                                    <td class="td"></td>
                                </tr>
                        </table>
                        @endif
                        <div class="mt-3">
                            {{$data->links()}}
                        </div>
                </div>
            </div>
        </div>
    </div>
      
</x-app-layout>