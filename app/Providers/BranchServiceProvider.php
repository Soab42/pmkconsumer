<?php

namespace App\Providers;

use App\Models\ConsumerOrder;
use App\Models\ConsumerProduct;
use Illuminate\Http\Request;
use Illuminate\Support\ServiceProvider;

class BranchServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */

    public function boot(): void
    {
        // Use a view composer to share data with all views
        view()->composer('*', function ($view) {
            $BranchName = ConsumerProduct::distinct()->pluck('Branch Name')->toArray();
            $ProductType = ConsumerProduct::distinct()->pluck('Product Name')->toArray();
            $DistributorName = ConsumerProduct::distinct()->pluck('Distributor name')->toArray();
            $ProductStatus = ConsumerProduct::distinct()->pluck('Product Status')->toArray();
            $BillPay = ConsumerOrder::distinct()->pluck('Bill Pay')->toArray();

            // Get the selected branch name from the request (assuming it's part of the request data)
            // Replace 'branchName' with the actual input name
            // Retrieve POST request data





            // Use $nextOrderID as needed, for example, to create a new order.
            $view->with(
                [
                    'branchNames' => $BranchName,
                    'productTypes' => $ProductType,
                    'distributorNames' => $DistributorName,
                    'productStatus' => $ProductStatus,
                    'BillPays' => $BillPay,


                ]
            );
        });
    }
}
