

<!-- Main modal -->
<div id="defaultModal" tabindex="-1" aria-hidden="true" class="flex  z-50 justify-center items-center w-full md:inset-0 h-modal md:h-full">
    <div class="relative p-4 w-full max-w-2xl h-full md:h-auto">
        <!-- Modal content -->
        <div class="relative p-4 bg-white rounded-lg shadow dark:bg-gray-800 sm:p-5">
            <!-- Modal header -->
            <div class="flex justify-between items-center pb-4 mb-4 rounded-t border-b sm:mb-5 dark:border-gray-600">
                <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                    Add New Order
                </h3>
                <button type="button" class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-toggle="defaultModal" id="closeModal " x-on:click.prevent="$dispatch('close')">
                    <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                    <span class="sr-only">Close modal</span>
                </button>
            </div>
            <!-- Modal body -->
            <form action="#" id="addform" method="post">
              
                <div class="grid gap-4 mb-4 sm:grid-cols-2">
                    <div>
                        <label for="order_date" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Order Date</label>
                        <input class="modalinput" name="order_date" type="date" id="from" size="10" required />
                    </div>
                    <div>
                      <label for="branch_name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Branch Name</label>
                      <select class="modalinput" name="distributor_name" id="branchName">
                        <option selected>Select Branch Name</option>
                       @foreach ($branchNames as $branchName) 
                           <option value="{{$branchName}}">{{$branchName}}</option>
                       @endforeach
                   </select>
                  </div>
                    <div>
                        <label for="order_code" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Order Code</label>
                        <input type="text" class="modalinput" value="" name="order_code" id="order_code">
                    </div>
                    <div>
                        <label for="distributor_name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Distributor Name</label>
                        <select class="modalinput" name="distributor_name">
                          <option selected>Select Distributor Name</option>
                         <option value="1">Singer</option>
                         <option value="2">Walton</option>
                     </select>
                    </div>
                    <div>
                        <label for="product_cat" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Product Category</label>
                        <select class="modalinput" name="product_cat">
                          <option>Select Distributor Name</option>
                         <option value="1">LED TV</option>
                         <option value="2">Refrigerator</option>
                         <option value="3">Computer</option>
                         <option value="4">Air Conditioner</option>
                         <option value="5">Sewing Machine</option>
                         <option value="6">Washing Machine</option>
                         <option value="7">Mixer Grinder</option>
                         <option value="8">Microwave Oven</option>
                         <option value="9">Fan</option>
                         <option value="10">Iron</option>
                         <option value="11">Water Purifier</option>
                         <option value="12">Rice Cooker</option>
                         <option value="13">Gas Burner</option>
                         <option value="14">IPS</option>
                         <option value="15">Voltage Stabilizer</option>
                         <option value="16">Laptop</option>
                         <option value="17">Pressure Cooker</option>
                         <option value="18">Pan</option>
                         <option value="19">Smart TV</option>
                         <option value="20">Blender</option>
                         <option value="21">Electric Ketle</option>
                         <option value="22">Mobile</option>
                         <option value="23">Swing Machine Table</option>
                         <option value="24">Swing Machine Stand</option>
                         <option value="25">Swing Machine Cover</option>
                         </select>
                    </div>
                    <div >
                        <label for="model_no" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Model No</label>
                        <input class="modalinput" name="model_no" type="text" placeholder="" required />                    
                    </div>
                    <div >
                      <label for="product_price" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Product Price</label>
                      <input class="modalinput"  name="product_price" type="number" placeholder="" required />                   
                  </div>
                  <div >
                      <label for="order_quantity" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Order Quantity</label>
                      <input class="modalinput"  name="order_quantity" type="number" placeholder="" required />                 
                  </div>
                  <div class="col-span-2" >
                      <label for="order_remarks" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Remarks</label>
                      <textarea class="modalinput" name="order_remarks"></textarea>                
                  </div>
  </div>
                <button type="submit" class="animated-button flex h-10" >
                    <svg class="mr-1 -ml-1 w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z" clip-rule="evenodd"></path></svg>
                    Add new product
                </button>
            </form>
        </div>
    </div>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <script>
  //   document.getElementById("branchName").addEventListener("change", function() {
  //     let select = this.value;
  //     console.log(select);
  // });
  $(document).ready(function() {
      $('#branchName').on("change", function() {
          // Get the selected branch name
          var selectedBranch = $(this).val();
  
          // Log the selected branch name (you can perform further actions here)
          // console.log("Selected Branch: " + selectedBranch);
          $.ajaxSetup({
              headers: {
                  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
              }
          });
          // Example: You can also make an AJAX request with the selected branch name here
          $.ajax({
              type: 'POST',
              url: 'order/branch', // Replace with your Laravel route or endpoint
              data:  {'branchName':selectedBranch},
              success: function(response) {
                  // You can update the DOM with the response data here
                  $('#order_code').val(response);
              },
              error: function(error) {
                  // Handle any errors
                  console.error(error);
              }
          });
      });
  });
  
  </script>