namespace App\Imports;

use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\WithValidation;
use Illuminate\Support\Collection;

class LedgerImport implements ToCollection, WithHeadingRow, WithChunkReading, WithValidation
{
public function collection(Collection $rows)
{
foreach ($rows as $row) {
DB::table('ledgers')->updateOrInsert(
[
'Transaction Date' => $row['transaction_date'],
'Voucher Code' => $row['voucher_code'],
'Debit Account' => $row['debit_account'],
'Credit Account' => $row['credit_account'],
'Debit' => $row['debit'],
'Credit' => $row['credit'],
'Branch Name' => $row['branch_name'],
]
);
}
}

public function chunkSize(): int
{
return 1000;
}

public function rules(): array
{
return [
'*.transaction_date' => 'required|date',
'*.voucher_code' => 'required|string',
'*.debit_account' => 'required|string',
'*.credit_account' => 'required|string',
'*.debit' => 'required|numeric',
'*.credit' => 'required|numeric',
'*.branch_name' => 'required|string',
];
}
}