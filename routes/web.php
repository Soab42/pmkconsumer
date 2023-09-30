<?php

use App\Http\Controllers\ConsumerSoldOutController;
use App\Http\Controllers\ConsumerTransFromBranchController;
use App\Http\Controllers\ConsumerTransThisBranchController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ReportController;
use App\Models\ConsumerTransFromBranch;
use App\Models\ConsumerTransThisBranch;
use App\Providers\BranchServiceProvider;
use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/



Route::get('/', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});


// Define a route group with a prefix and middleware
Route::group(['prefix' => 'consumer', 'middleware' => 'auth'], function () {
    // Routes inside this group will have a URL prefix of '/admin'
    // and will be protected by the 'auth' middleware.

    // Route::get('/order', 'OrderController@index')->name('order.index');
    Route::get('/order', [OrderController::class, 'index'])->name('order.index');
    Route::post('/order', [OrderController::class, 'index'])->name('order.index');
    Route::post('/order/branch', [OrderController::class, 'getBranchName'])->name('order.branch');
    Route::get('/product', [ProductController::class, 'index'])->name('product.index');
    Route::get('/soldout', [ConsumerSoldOutController::class, 'index'])->name('soldout.index');
    Route::get('/transfrom', [ConsumerTransFromBranchController::class, 'index'])->name('transfrom.index');
    Route::get('/transthis', [ConsumerTransThisBranchController::class, 'index'])->name('transthis.index');
    Route::get('/report', [ReportController::class, 'index'])->name('report.index');

    // Route::get('/users', 'AdminController@users');
    // Route::get('/settings', 'AdminController@settings');
});



require __DIR__ . '/auth.php';
