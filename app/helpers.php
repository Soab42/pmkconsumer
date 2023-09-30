<?php
// app/helpers.php
if (!function_exists('customValidation')) {
    function customValidation($variable, $emptyValue)
    {
        return !empty($variable) && $variable !== 'select ' . $emptyValue;
    }
}