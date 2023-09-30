
<option value="{{ $value }}" {{ $value == $selectedValue ? 'selected' : '' }} {{ $attributes->merge(['class' => 'px-1 w-44 text-center cursor-pointer rounded-md']) }}>
    {{ $slot }}
</option>
