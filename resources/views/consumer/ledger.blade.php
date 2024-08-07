@push('title')
    <title>PMK | Ledger</title>
@endpush
<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-between gap-20 items-center bg-gradient-to-r from-emerald-500 from-20% via-sky-500 via-30% to-blue-400 to-90% px-4 rounded-md">
            <h1 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
                {{ __('Consumer Order') }}
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
                <select name="branch" class='selectInput'>
                    <option value="select branch" class='px-1 w-40 text-center cursor-pointer rounded-md '>
                        Select Ledger Head
                    </option>
                   @foreach ($AccountNames as $Account)
                        
                        <x-option value="{{$Account}}" selectedValue="{{ request('Account') }}">
                            {{$Account}}
                        </x-option>
                        
                   @endforeach
                </select>
                <input type="date" name="from" id="from" class='selectInput' value="{{ request('from') }}">
                <input type="date" name="to" id="to" class='selectInput' value="{{ request('to') }}">
               
                <button class='animated-button w-20'>Search</button>
            </form>
           
            <x-secondary-button
            x-data=""
            x-on:click.prevent="$dispatch('open-modal', 'confirm-update-ledger')"
            >
                {{ __('Update Ledger') }}
            </x-secondary-button>
        
        <div>       
       
        </div>
    </x-slot>
    <div class="modal h-0 overflow-hidden ">
        
        <x-modal name="confirm-update-ledger"  focusable>
      @include('upload.ledger');
       </x-modal>
    </div>

{{-- {{$totalAmounts}} --}}
    <div class="py-6">
        <div class="max-w-8xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100 relative h-[70vh] mb-2 overflow-scroll">  
                   
                    @if ($data->isEmpty()) 
                    <p class="flex justify-center items-center text-[5rem] text-red-400 h-full">No data found</p>
                    @else
                       <table class="border-collapse border border-black relative ">
                            <thead class="">
                                <tr class="rounded-md bg-sky-600 sticky -top-6">
                                    @foreach ($data->first()->getAttributes() as $key => $value)
                                        <th class="td">{{ $key }}</th>
                                    @endforeach
                                    </tr>
                            </thead>
                       
                                <tbody class="">
                                        @php
                                            $totals = [
                                                'Debit'=> 0,
                                                'Credit' => 0,
                                                ""=> "-"
                                            ];
                                        @endphp

                                        @foreach ($data as $order)
                                             
                                                    @if($order->billPaid)
                                                    @php
                                                        $totals['Paid Amount'] += $order->billPaid->Paid_Amount;
                                                        @endphp
                                                    @endif
                                               
                                            <tr class="border border-black px-1 p-1 text-center">
                                                @foreach ($order->getAttributes() as $key => $value)
                                                {{-- {{ $key}} --}}
                                                    <td class="td">{{ $value }}</td>
                                                    @if (array_key_exists($key, $totals))
                                                        @php
                                                            $totals[$key] += intval($value);
                                                        @endphp
                                                    @endif
                                                @endforeach
                                            </tr>
                                        @endforeach

                                        <tr class="bg-sky-900 text-center">
                                            <td class="td text-right text-[1.1rem] px-4" colspan="5">Total</td>
                                            @foreach ($totals as $key => $total)
                                                @if ($key !=='Paid Amount')
                                                    
                                                <td class="td">{{ $total }}</td>
                                                @endif
                                            
                                            @endforeach
                                      
                                        </tr>
                               
                                </tbody>
                             </table>
                             
                         @endif 
                            </div>
                <div class="p-2">
                    {{ $data->withQueryString()->links() }}
                 </div>
            </div>
            
        </div>
    </div>

</x-app-layout>

<script>
    $(document).ready(function() {
        
    });
    
</script>

