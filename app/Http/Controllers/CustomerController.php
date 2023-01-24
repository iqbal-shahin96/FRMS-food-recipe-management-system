<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Food;
use PDF;

class CustomerController extends Controller
{
    public function profile(Request $request){
        $customer = auth()->user();
        return view('customer.profile', compact('customer'));
    }

    
    public function order_list(){
        $order_lists = Order::where('status', '1')->where('user_id', auth()->user()->id)->get();
        return view ('customer.order_list', compact('order_lists'));
    }
    


    public function details($id){
        $details = Food::find($id);
        return view ('customer.details', compact('details')); 
    }

    public function invoice($id){

        $invoice= Order::find($id);
        return view ('customer.invoice', compact('invoice')); 
    //     $data = [
    //         'invoice' => $invoice,
    //     ];
    //     $pdf = PDF::loadView('customer.invoice', $data);

    //     return $pdf->download('CashMemo.pdf');

    
    }
    

}
