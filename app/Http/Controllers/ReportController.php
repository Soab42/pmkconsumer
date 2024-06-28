<?php

namespace App\Http\Controllers;

use App\Models\ConsumerOrder;
use App\Models\ConsumerProduct;
use App\Models\ConsumerSoldout;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ReportController extends Controller
{
    public function index(Request $request)
    {
        function getSingleBranchReporter($from = null, $to = null, $distributorName = null, $branchName = null)
        {
            // Define your SQL query with placeholders for variables
            $sql = "SELECT cp.`Product Name` as product_name, COUNT(cp.`Product Name`) as product_count,
            SUM(cp.`Product Purchase Price`) as Purchase_Value,
            COUNT(tms.`Product ID`) as `cmSalesCount`,
            SUM(tms.`Salable Price`) as `cmSalesPrice`,
            SUM(tms.`Purchase Price`) as `cmPurchasePrice`,
            SUM(tms.`Staff Comission`) as `cmStaffComission`,
            SUM(tms.`Salable Price` - tms.`Purchase Price` - tms.`Staff Comission`) as `cmNetProfit`,
            COUNT(cs.`Product Name`) as `SalesCount`,
            SUM(cs.`Salable Price`) as `SalesPrice`,
            SUM(cs.`Purchase Price`) as `PurchasePrice`,
            SUM(cs.`Staff Comission`) as `StaffComission`,
            SUM(cs.`Salable Price` - cs.`Purchase Price` - cs.`Staff Comission`) as `NetProfit`,
            COUNT(cp.`Product Name`) - COUNT(cs.`Product Name`) as `InStockCount`,
            SUM(cp.`Product Purchase Price`) - COALESCE(SUM(cs.`Purchase Price`),0) as `InStockValue`,
            COALESCE(billPaid.totalPaidCount, 0) AS `totalPaidCount`,
            COALESCE(billPaid.TotalPaidAmount, 0) AS `TotalPaidAmount`
          FROM consumer_products cp
          LEFT JOIN (
                     SELECT
                     `Distrivutor Name`,
                        `Product ID`,
                        `Soldout Date`,
                        `Salable Price`,
                        `Purchase Price`,
                        `Staff Comission`
                    FROM `consumer_soldouts` 
                    WHERE `Soldout Date` BETWEEN ? AND ?
                    UNION
                    SELECT      
                    `Distributor Name` ,                  
                    `Product Code`,
                    `Transfer Date`,
                    `Product Purchase Price`,
                    `Check Amount`,
                    0 as `Staff Comission`
                    FROM `consumer_trans_this_branches`
                    WHERE `Transfer Date` BETWEEN ? AND ?) tms ON cp.`Recieved ID` = tms.`Product ID`
            LEFT JOIN
                (SELECT `Branch name`,`Product ID`,`Salable Price`,`Purchase Price`,`Staff Comission`,`Distrivutor Name`,`Product Name`
                FROM consumer_soldouts WHERE `Soldout Date` BETWEEN '2019-01-01' AND ? 
                UNION
                SELECT `Transfer From Branch`,`Product Code`,`Product Purchase Price`,`Check Amount`, 0 as `Staff Comission`,`Distributor Name`,`Product Category`
                FROM `consumer_trans_this_branches` 
                WHERE `Transfer Date` BETWEEN '2019-01-01' AND ?) cs 
                ON cp.`Recieved ID` = cs.`Product ID`
            LEFT JOIN
                    (
                    SELECT
                        co.`Product Name`,
                        co.`Branch name`,
                        SUM(CASE WHEN co.`bill pay` = 'paid' THEN co.`Received Quantity` ELSE 0 END) AS totalPaidCount,
                        SUM(bp.Paid_Amount) AS TotalPaidAmount
                    FROM
                        `consumer_orders` co
                    LEFT JOIN
                        `consumer_bill_paids` bp ON co.`Order ID` = bp.`Order_Code`
                        WHERE co.`Distributor Name`= ?
                    GROUP BY
                        co.`Product Name`, co.`Branch name`
                    ) billPaid ON cp.`Branch name` = billPaid.`Branch name` AND cp.`Product Name` = billPaid.`Product Name`
                WHERE cp.`Branch Name` = ? 
                AND cp.`Distributor Name` = ? 
                GROUP BY
                    cp.`Product Name`,
                    cp.`Branch Name`,
                    billPaid.totalPaidCount,
                    billPaid.TotalPaidAmount";

            // Use DB::select to execute the raw SQL query with parameter bindings
            $data = DB::select($sql, [$from, $to, $from, $to, $to, $to, $distributorName, $branchName, $distributorName]);
            return $data;
        };

        $branchName = $request->input('branch');
        $branchNameS = null;
        if (customValidation($branchName, 'branch')) {
            // If $branchName is not null, set it as the only value in branches array
            $branches = [$branchName];
            $branchNameS = $branchName . ' Branch';
        } else {
            // Fetch branches from the ConsumerOrder model
            $branches = ConsumerOrder::branch();
        }

        $from =  $request->input('from') ?? '2019-01-01';
        $to =  $request->input('to') ?? date('Y-m-d');
        $distributorName = $request->input('distributor') ?? 'Singer';

        $ZoneData = [];

        foreach ($branches as $branch) {
            $data = getSingleBranchReporter($from, $to, $distributorName, $branch);
            $ZoneData[$branch] = $data;
        }
        return view('consumer.report', compact('ZoneData', 'distributorName', 'branchNameS'));
    }
}
