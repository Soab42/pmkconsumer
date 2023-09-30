<?php
public function reportTable()
    {
 $products = [
            'TV' => ['Smart TV', 'LED TV'],
            'Fridge' => ['Refrigerator'],
            'AC' => ['Air Conditioner'],
            'WashingMachine' => ['Washing Machine'],
            'SwingMachine' => ['Sewing Machine'],
            'Others' => ['Microwave Oven', 'Rice Cooker'],


        ];
// Initialize totals arrays
        $totalCounts = [];
        $totalPrices = [];

        $totalCmSalesCounts = [];
        $totalCmSalesPrices = [];
        $totalCmPurchasePrices = [];
        $totalCmStaffCommissions = [];
        $totalCmNetProfits = [];

        $totalSalesCounts = [];
        $totalSalesPrices = [];
        $totalPurchasePrices = [];
        $totalStaffCommissions = [];
        $totalNetProfits = [];

        $totalInStockCounts = [];
        $totalInStockValues = [];

        $totalPaidCounts = [];
        $totalPaidValues = [];

        //grancd total count

        $GrandTotalCounts = 0;
        $GrandTotalPrices = 0;

        $GrandTotalCmSalesCounts = 0;
        $GrandTotalCmSalesPrices = 0;
        $GrandTotalCmPurchasePrices = 0;
        $GrandTotalCmStaffCommissions = 0;
        $GrandTotalCmNetProfits = 0;

        $GrandTotalSalesCounts = 0;
        $GrandTotalSalesPrices = 0;
        $GrandTotalPurchasePrices = 0;
        $GrandTotalStaffCommissions = 0;
        $GrandTotalNetProfits = 0;

        $GrandTotalInStockCounts = 0;
        $GrandTotalInStockValues = 0;

        $GrandTotalPaidCounts = 0;
        $GrandTotalPaidValues = 0;

        // Initialize branch data array
        $branchData = [];
        $branchSubtotals = [];
        // Query the database to get branch names

        while ($row = mysqli_fetch_assoc($result)) {
            $branchName = $row["Branch name"];

            // Initialize branch-specific variables
            $branchCounts = [];
            $branchPrices = [];

            $branchCmSalesCounts = [];
            $branchCmSalesPrices = [];
            $branchCmPurchasePrices = [];
            $branchCmStaffCommissions = [];
            $branchCmNetProfits = [];

            $branchSalesCounts = [];
            $branchSalesPrices = [];
            $branchPurchasePrices = [];
            $branchStaffCommissions = [];
            $branchNetProfits = [];

            $branchInStockCounts = [];
            $branchInStockValues = [];

            $branchPaidCounts = [];
            $branchPaidValues = [];


            // Loop through product categories
            foreach ($products as $category => $productNames) {
                // Initialize category-specific variables
                $categoryCount = 0;
                $categoryPrice = 0;

                $categoryCmSalesCount = 0;
                $categoryCmSalesPrice = 0;
                $categoryCmPurchasePrice = 0;
                $categoryCmStaffComission = 0;
                $categoryCmNetProfit = 0;

                $categorySalesCount = 0;
                $categorySalesPrice = 0;
                $categoryPurchasePrice = 0;
                $categoryStaffComission = 0;
                $categoryNetProfit = 0;

                $categoryInStockCount = 0;
                $categoryInStockValue = 0;

                $categoryPaidCount = 0;
                $categoryPaidValue = 0;

                // Loop through product names in the category
                foreach ($productNames as $productName) {
                    // Execute SQL query to get product data for the branch and category

                    $sql = "SELECT
                    cp.`Product Name`,
                    COUNT(cp.`Product Name`) as `Product_Count`,
                    SUM(cp.`Product Purchase Price`) as `Purchase_Value`,
                    COUNT(tms.`Product ID`) as `cmSalesCount`,
                    SUM(tms.`Salable Price`) as `cmSalesPrice`,
                    SUM(tms.`Purchase Price`) as `cmPurchasePrice`,
                    SUM(tms.`Staff Comission`) as `cmStaffComission`,
                    SUM(tms.`Salable Price` - tms.`Purchase Price` - tms.`Staff Comission`) as `cmNet Profit`,
                    COUNT(cs.`Product Name`) as `SalesCount`,
                    SUM(cs.`Salable Price`) as `SalesPrice`,
                    SUM(cs.`Purchase Price`) as `PurchasePrice`,
                    SUM(cs.`Staff Comission`) as `StaffComission`,
                    SUM(cs.`Salable Price` - cs.`Purchase Price` - cs.`Staff Comission`) as `Net Profit`,
                    COUNT(cp.`Product Name`) - COUNT(cs.`Product Name`) as `InStockCount`,
                    SUM(cp.`Product Purchase Price`) - COALESCE(SUM(cs.`Purchase Price`),0) as `InStockValue`,
                    COALESCE(billPaid.totalPaidCount, 0) AS `totalPaidCount`,
                    COALESCE(billPaid.TotalPaidAmount, 0) AS `TotalPaidAmount`
                    FROM
                    `consumer_product` cp
                    LEFT JOIN (
                     SELECT
                     `Distributor Name`,
                        `Product ID`,
                        `Soldout Date`,
                        `Salable Price`,
                        `Purchase Price`,
                        `Staff Comission`
                    FROM `consumer_soldout` 
                    WHERE `Soldout Date` BETWEEN '$from' AND '$to'
                    UNION
                    SELECT      
                    `Distributor Name` ,                  
                        `Product Code`,
                        `Transfer Date`,
                        `Product Purchase Price`,
                        `Check Amount`,
                        0 as `Staff Comission`                                             
                   FROM `consumer_trans_this`
                    WHERE `Transfer Date` BETWEEN '$from' AND '$to' 
                    ) as tms ON cp.`Recieved ID` = tms.`Product ID`
                   LEFT JOIN
                    (SELECT `Branch name`,`Product ID`,`Salable Price`,`Purchase Price`,`Staff Comission`,`Distributor Name`,`Product Name`
                    FROM consumer_soldout WHERE `Soldout Date` BETWEEN '2019-01-01' AND '$to'
                    UNION
                    SELECT `Transfer From Branch`,`Product Code`,`Product Purchase Price`,`Check Amount`, 0 as `Staff Comission`,`Distributor Name`,`Product Category`
                    FROM `consumer_trans_this` 
                    WHERE `Transfer Date` BETWEEN '2019-01-01' AND '$to') as cs 
                    ON cp.`Recieved ID` = cs.`Product ID`
                    LEFT JOIN
                    (
                    SELECT
                        co.`Product Name`,
                        co.`Branch name`,
                        SUM(CASE WHEN co.`bill pay` = 'paid' THEN co.`Received Quantity` ELSE 0 END) AS totalPaidCount,
                        SUM(bp.Paid_Amount) AS TotalPaidAmount
                    FROM
                        `consumer_order` co
                    LEFT JOIN
                        `consumer_bill_paid` bp ON co.`Order ID` = bp.`Order_Code`
                        WHERE co.`Distributor Name`='$distributorName'
                    GROUP BY
                        co.`Product Name`, co.`Branch name`

                    ) AS billPaid ON cp.`Branch name` = billPaid.`Branch name` AND cp.`Product Name` = billPaid.`Product Name`
                    WHERE cp.`Branch name` = '$branchName'
                                AND cp.`Product Name` = '$productName' and cp.`Distributor Name`='$distributorName'";
                    //FETCH DATA FROM DB            
                    $result2 = mysqli_query($this->dbConnect, $sql);
                    // echo $sql;
                    if (!$result2) {
                        // Handle database query error
                        return;
                    }

                    $row2 = mysqli_fetch_assoc($result2);
                    $categoryCount += $row2['Product_Count'];
                    $categoryPrice += $row2['Purchase_Value'];

                    $categoryCmSalesCount += $row2['cmSalesCount'];
                    $categoryCmSalesPrice += $row2['cmSalesPrice'];
                    $categoryCmPurchasePrice += $row2['cmPurchasePrice'];
                    $categoryCmStaffComission += $row2['cmStaffComission'];
                    $categoryCmNetProfit += $row2['cmNet Profit'];

                    $categorySalesCount += $row2['SalesCount'];
                    $categorySalesPrice += $row2['SalesPrice'];
                    $categoryPurchasePrice += $row2['PurchasePrice'];
                    $categoryStaffComission += $row2['StaffComission'];
                    $categoryNetProfit += $row2['Net Profit'];

                    $categoryInStockCount += $row2['InStockCount'];
                    $categoryInStockValue += $row2['InStockValue'];

                    $categoryPaidCount += $row2['totalPaidCount'];
                    $categoryPaidValue += $row2['TotalPaidAmount'];
                    // Update branch totals
                    if (!isset($branchCounts[$category])) {
                        $branchCounts[$category] = 0;
                        $branchPrices[$category] = 0;

                        $branchCmSalesCounts[$category] = 0;
                        $branchCmSalesPrices[$category] = 0;
                        $branchCmPurchasePrices[$category] = 0;
                        $branchCmStaffCommissions[$category] = 0;
                        $branchCmNetProfits[$category] = 0;

                        $branchSalesCounts[$category] = 0;
                        $branchSalesPrices[$category] = 0;
                        $branchPurchasePrices[$category] = 0;
                        $branchStaffCommissions[$category] = 0;
                        $branchNetProfits[$category] = 0;

                        $branchInStockCounts[$category] = 0;
                        $branchInStockValues[$category] = 0;

                        $branchPaidCounts[$category] = 0;
                        $branchPaidValues[$category] = 0;
                    }
                    $branchCounts[$category] += $row2['Product_Count'];
                    $branchPrices[$category] += $row2['Purchase_Value'];

                    $branchCmSalesCounts[$category] += $row2['cmSalesCount'];
                    $branchCmSalesPrices[$category] += $row2['cmSalesPrice'];
                    $branchCmPurchasePrices[$category] += $row2['cmPurchasePrice'];
                    $branchCmStaffCommissions[$category] += $row2['cmStaffComission'];
                    $branchCmNetProfits[$category] += $row2['cmNet Profit'];

                    $branchSalesCounts[$category] += $row2['SalesCount'];
                    $branchSalesPrices[$category] += $row2['SalesPrice'];
                    $branchPurchasePrices[$category] += $row2['PurchasePrice'];
                    $branchStaffCommissions[$category] += $row2['StaffComission'];
                    $branchNetProfits[$category] += $row2['Net Profit'];

                    $branchInStockCounts[$category] += $row2['InStockCount'];
                    $branchInStockValues[$category] += $row2['InStockValue'];

                    $branchPaidCounts[$category] += $row2['totalPaidCount'];
                    $branchPaidValues[$category] += $row2['TotalPaidAmount'];

                    // Update grand totals
                    if (!isset($totalCounts[$category])) {
                        $totalCounts[$category] = 0;
                        $totalPrices[$category] = 0;

                        $totalCmSalesCounts[$category] = 0;
                        $totalCmSalesPrices[$category] = 0;
                        $totalCmPurchasePrices[$category] = 0;
                        $totalCmStaffCommissions[$category] = 0;
                        $totalCmNetProfits[$category] = 0;

                        $totalSalesCounts[$category] = 0;
                        $totalSalesPrices[$category] = 0;
                        $totalPurchasePrices[$category] = 0;
                        $totalStaffCommissions[$category] = 0;
                        $totalNetProfits[$category] = 0;

                        $totalInStockCounts[$category] = 0;
                        $totalInStockValues[$category] = 0;

                        $totalPaidCounts[$category] = 0;
                        $totalPaidValues[$category] = 0;
                    }
                    $totalCounts[$category] += $row2['Product_Count'];
                    $totalPrices[$category] += $row2['Purchase_Value'];

                    $totalCmSalesCounts[$category] += $row2['cmSalesCount'];
                    $totalCmSalesPrices[$category] += $row2['cmSalesPrice'];
                    $totalCmPurchasePrices[$category] += $row2['cmPurchasePrice'];
                    $totalCmStaffCommissions[$category] += $row2['cmStaffComission'];
                    $totalCmNetProfits[$category] += $row2['cmNet Profit'];

                    $totalSalesCounts[$category] += $row2['SalesCount'];
                    $totalSalesPrices[$category] += $row2['SalesPrice'];
                    $totalPurchasePrices[$category] += $row2['PurchasePrice'];
                    $totalStaffCommissions[$category] += $row2['StaffComission'];
                    $totalNetProfits[$category] += $row2['Net Profit'];

                    $totalInStockCounts[$category] += $row2['InStockCount'];
                    $totalInStockValues[$category] += $row2['InStockValue'];

                    $totalPaidCounts[$category] += $row2['totalPaidCount'];
                    $totalPaidValues[$category] += $row2['TotalPaidAmount'];
                }

                // Append category data to branchData array
                $branchData[$branchName][$category]['count'] = $categoryCount;
                $branchData[$branchName][$category]['count'] = $categoryCount;

                $branchData[$branchName][$category]['price'] = $categoryPrice;


                $branchData[$branchName][$category]['cmsalesCount'] = $categoryCmSalesCount;
                $branchData[$branchName][$category]['cmsalesPrice'] = $categoryCmSalesPrice;
                $branchData[$branchName][$category]['cmpurchasePrice'] = $categoryCmPurchasePrice;
                $branchData[$branchName][$category]['cmstaffComission'] = $categoryCmStaffComission;
                $branchData[$branchName][$category]['cmnetProfit'] = $categoryCmNetProfit;


                $branchData[$branchName][$category]['salesCount'] = $categorySalesCount;
                $branchData[$branchName][$category]['salesPrice'] = $categorySalesPrice;
                $branchData[$branchName][$category]['purchasePrice'] = $categoryPurchasePrice;
                $branchData[$branchName][$category]['staffComission'] = $categoryStaffComission;
                $branchData[$branchName][$category]['netProfit'] = $categoryNetProfit;

                $branchData[$branchName][$category]['inStockCount'] = $categoryInStockCount;
                $branchData[$branchName][$category]['inStockValue'] = $categoryInStockValue;

                $branchData[$branchName][$category]['paidCount'] = $categoryPaidCount;
                $branchData[$branchName][$category]['paidValue'] = $categoryPaidValue;
            }

            // Append branch data to the HTML table
            $html .= "<tr>";
            $html .= "<td class='border border-black px-1' rowspan='7'>" . count($branchData) . "</td>";
            $html .= "<td class='border border-black px-1' rowspan='7'>$branchName</td>";

            $html .= "</tr>";
            // Initialize branch-level subtotals for each branch
            $branchSubtotalCounts = 0;
            $branchSubtotalPrices = 0;

            $branchSubtotalCmSalesCounts = 0;
            $branchSubtotalCmSalesPrices = 0;
            $branchSubtotalCmPurchasePrices = 0;
            $branchSubtotalCmStaffCommissions = 0;
            $branchSubtotalCmNetProfits = 0;

            $branchSubtotalSalesCounts = 0;
            $branchSubtotalSalesPrices = 0;
            $branchSubtotalPurchasePrices = 0;
            $branchSubtotalStaffCommissions = 0;
            $branchSubtotalNetProfits = 0;

            $branchSubtotalInStockCounts = 0;
            $branchSubtotalInStockValues = 0;

            $branchSubtotalPaidCounts = 0;
            $branchSubtotalPaidValues = 0;

            foreach ($branchData[$branchName] as $category => $data) {

                //grand total calculation
                $GrandTotalCounts += $data['count'];
                $GrandTotalPrices += $data['price'];

                $GrandTotalCmSalesCounts += $data['cmsalesCount'];
                $GrandTotalCmSalesPrices += $data['cmsalesPrice'];
                $GrandTotalCmPurchasePrices += $data['cmpurchasePrice'];
                $GrandTotalCmStaffCommissions += $data['cmstaffComission'];
                $GrandTotalCmNetProfits += $data['cmnetProfit'];

                $GrandTotalSalesCounts += $data['salesCount'];
                $GrandTotalSalesPrices += $data['salesPrice'];
                $GrandTotalPurchasePrices += $data['purchasePrice'];
                $GrandTotalStaffCommissions += $data['staffComission'];
                $GrandTotalNetProfits += $data['netProfit'];

                $GrandTotalInStockCounts += $data['inStockCount'];
                $GrandTotalInStockValues += $data['inStockValue'];

                $GrandTotalPaidCounts += $data['paidCount'];
                $GrandTotalPaidValues += $data['paidValue'];

                //sub total  calculation
                $branchSubtotalCounts += $data['count'];
                $branchSubtotalPrices += $data['price'];

                $branchSubtotalCmSalesCounts += $data['cmsalesCount'];
                $branchSubtotalCmSalesPrices += $data['cmsalesPrice'];
                $branchSubtotalCmPurchasePrices += $data['cmpurchasePrice'];
                $branchSubtotalCmStaffCommissions += $data['cmstaffComission'];
                $branchSubtotalCmNetProfits += $data['cmnetProfit'];

                $branchSubtotalSalesCounts += $data['salesCount'];
                $branchSubtotalSalesPrices += $data['salesPrice'];
                $branchSubtotalPurchasePrices += $data['purchasePrice'];
                $branchSubtotalStaffCommissions += $data['staffComission'];
                $branchSubtotalNetProfits += $data['netProfit'];

                $branchSubtotalInStockCounts += $data['inStockCount'];
                $branchSubtotalInStockValues += $data['inStockValue'];

                $branchSubtotalPaidCounts += $data['paidCount'];
                $branchSubtotalPaidValues += $data['paidValue'];

                $html .= "<tr>";
                $html .= "<td class='border border-black px-1'>$category</td>";

                $html .= "<td class='border border-black text-center px-1'>{$data['count']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['price']}</td>";

                // $html .= "<td class='border border-black text-center px-1' colspan='5'></td>"; // Empty columns
                $html .= "<td class='border border-black text-center px-1'>{$data['cmsalesCount']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['cmsalesPrice']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['cmpurchasePrice']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['cmstaffComission']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['cmnetProfit']}</td>";

                $html .= "<td class='border border-black text-center px-1'>{$data['salesCount']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['salesPrice']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['purchasePrice']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['staffComission']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['netProfit']}</td>";

                $html .= "<td class='border border-black text-center px-1'>{$data['inStockCount']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['inStockValue']}</td>";

                $html .= "<td class='border border-black text-center px-1'>{$data['paidCount']}</td>";
                $html .= "<td class='border border-black text-center px-1'>{$data['paidValue']}</td>";
                $html .= "<td class='border border-black text-center px-1'></td>";
                $html .= "</tr>";
            }
            // Display branch subtotals at the end of the row
            $html .= "<tr class='bg-blue-400'>";

            $html .= "<th class='border border-black' colspan='3'>Sub Total</th>";

            $html .= "<th class='border border-black'>$branchSubtotalCounts</th>";
            $html .= "<th class='border border-black'>$branchSubtotalPrices</th>";

            $html .= "<th class='border border-black'>$branchSubtotalCmSalesCounts</th>";
            $html .= "<th class='border border-black'>$branchSubtotalCmSalesPrices</th>";
            $html .= "<th class='border border-black'>$branchSubtotalCmPurchasePrices</th>";
            $html .= "<th class='border border-black'>$branchSubtotalCmStaffCommissions</th>";
            $html .= "<th class='border border-black'>$branchSubtotalCmNetProfits</th>";

            $html .= "<th class='border border-black'>$branchSubtotalSalesCounts</th>";
            $html .= "<th class='border border-black'>$branchSubtotalSalesPrices</th>";
            $html .= "<th class='border border-black'>$branchSubtotalPurchasePrices</th>";
            $html .= "<th class='border border-black'>$branchSubtotalStaffCommissions</th>";
            $html .= "<th class='border border-black'>$branchSubtotalNetProfits</th>";

            $html .= "<th class='border border-black'>$branchSubtotalInStockCounts</th>";
            $html .= "<th class='border border-black'>$branchSubtotalInStockValues</th>";

            $html .= "<th class='border border-black'>$branchSubtotalPaidCounts</th>";
            $html .= "<th class='border border-black'>$branchSubtotalPaidValues</th>";
            $html .= "<th class='border border-black'></th>";


            $html .= "</tr>";
        }



        // ... (Append Grand Total row here)
        $html .= "<tr>";

        $html .= "<td class='border border-black px-1 text-center rotate-2' colspan='2' rowspan='7'> Zone Total</td>";
        $html .= "</tr>";
        foreach ($products as $category => $productNames) {
            $html .= "<tr>";

            $html .= "<td class='border border-black px-1'>$category</td>";

            $html .= "<td class='border border-black text-center px-1'>{$totalCounts[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalPrices[$category]}</td>";

            // $html .= "<td class='border border-black text-center px-1' colspan='5'></td>";

            $html .= "<td class='border border-black text-center px-1'>{$totalCmSalesCounts[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalCmSalesPrices[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalCmPurchasePrices[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalCmStaffCommissions[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalCmNetProfits[$category]}</td>";

            $html .= "<td class='border border-black text-center px-1'>{$totalSalesCounts[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalSalesPrices[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalPurchasePrices[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalStaffCommissions[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalNetProfits[$category]}</td>";

            $html .= "<td class='border border-black text-center px-1'>{$totalInStockCounts[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalInStockValues[$category]}</td>";

            $html .= "<td class='border border-black text-center px-1'>{$totalPaidCounts[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'>{$totalPaidValues[$category]}</td>";
            $html .= "<td class='border border-black text-center px-1'></td>";
            $html .= "</tr>";
            $html .= "</tr>"; // Empty columns
        }
        $html .= "<tr class='bg-blue-400 -400'>
        <th class='border border-black ' colspan='3'>Grand Total</th>
        <th class='border border-black ' colspan=''>{$GrandTotalCounts}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalPrices}</th>

        <th class='border border-black ' colspan=''>{$GrandTotalCmSalesCounts}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalCmSalesPrices}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalCmPurchasePrices}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalCmStaffCommissions}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalCmNetProfits}</th>

        <th class='border border-black ' colspan=''>{$GrandTotalSalesCounts}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalSalesPrices}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalCmPurchasePrices}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalStaffCommissions}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalNetProfits}</th>

        <th class='border border-black ' colspan=''>{$GrandTotalInStockCounts}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalInStockValues}</th>

        <th class='border border-black ' colspan=''>{$GrandTotalPaidCounts}</th>
        <th class='border border-black ' colspan=''>{$GrandTotalPaidValues}</th>
        <th class='border border-black ' colspan=''></td>
        </tr>";
        // Close the table HTML
        $html .= '</table>';

        // print_r($branchData['Badda']);
        // Return the generated HTML
        return $html;
    }