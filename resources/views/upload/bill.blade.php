
{{-- {{$totalAmounts}} --}}
<div class="container flex w-full justify-center items-center h-full font-bold text-xl text-slate-200">
    <div class="row">
        <div class="col-md-6 offset-md-3 mt-5 space-y-5">
            <div class="card space-y-5">
                <div class="card-header">
                    <h4>Upload CSV</h4>
                </div>
                <div class="card-body">
                    @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif
                    <form action="{{ route('orderform.uploadBill') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="csv_file">Choose CSV File</label>
                            <input type="file" name="csv_file" class="form-control" required>
                        </div>
                        <button type="submit" class="animated-button text-xl mt-5">Upload</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
