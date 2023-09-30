<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class option extends Component
{
    public $value;
    public $selectedValue;

    public function __construct($value, $selectedValue)
    {
        $this->value = $value;
        $this->selectedValue = $selectedValue;
    }

    public function render()
    {
        return view('components.option');
    }
}
