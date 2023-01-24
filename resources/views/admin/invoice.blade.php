<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food & Cooking | Invoice</title>
    <link rel="stylesheet" href="{{ asset('frontend/css/invoice.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
</head>
<body>

    <div class="container" id="printableArea">
        <div class="brand-section">
            <div class="row">

                <div class="col-8">
                        <h1 class="text-white fw-bold"><img src="{{ asset('frontend/img/logo3.png') }}" alt="logo" width="80px" height="80px" class="logo_round me-3">Food & Cooking</h1>
                </div>

                <div class="col-4">
                    <div class="company-details">
                        <h6 class="text-white">Food & Cooking Recipe</h6>
                        <h6 class="text-white">Sector-10, Uttara, Dhaka-1209</h6>
                        <h6 class="text-white">+880 1234567890</h6>
                    </div>
                </div>
            </div>
        </div>

        

        <div class="body-section">
            <h3 class="heading">Ordered Items</h3>
            <br>
            <div class="table-responsive text-nowrap">
                <table class="table table-striped">
                    <thead>
                        <tr class="text-center">
                          <th>#</th>
                          <th>Recipe</th>
                          <th>Customer</th>
                          <th>Chef</th>
                          <th>Method</th>
                          <th>Tnx</th>
                          <th>Price</th>
                        </tr>
                      </thead>
                      <tbody class="table-border-bottom-0">
                        @foreach($order_lists as $key => $ol)
                        <tr>
                          <td>{{ $key+1 }}</td>
                          <td>{{ $ol->food_name }}</td>
                          <td>{{ $ol->user_name }}</td>
                          <td>{{ $ol->chef_name }}</td>
                          <td>{{ $ol->method }}</td>
                          <td>{{ $ol->tnx_id }}</td>
                          <td>{{ $ol->price }}</td>
                          @endforeach

                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th><h6 class="fw-semibold">Total Price = {{ $ol->sum('price') }} TK</h6></th>
                    </tr>
                  </tbody>
                </table>
              </div>
            <br>
            <h3 class="heading">Payment Status: All Paid</h3>
        </div>

        <div class="body-section">
            <p>&copy; Copyright 2022 - Food & Cooking. All rights reserved. 
                <a href="{{ route('indexPage') }}" class="float-right">www.food&cooking.com</a>
                <button type="button" class="btn btn-primary m-3 float-center" onclick="printDiv('printableArea')">Download</button>
            </p>
        </div>      
    </div>      

    <script>
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;
    
            document.body.innerHTML = printContents;
    
            window.print();
    
            document.body.innerHTML = originalContents;
        }
    </script>

</body>
</html>
