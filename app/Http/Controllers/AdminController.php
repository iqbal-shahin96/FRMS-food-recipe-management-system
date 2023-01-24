<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Food;
use App\Models\User;
use App\Models\Contact;

class AdminController extends Controller
{
    public function profile(Request $request){
        $admin = auth()->user();
        return view('admin.profile', compact('admin'));
    }


    public function show_chef(Request $request){
        $chefs = User::where('role', '2')->get();
        return view('admin.chef_list.index', compact('chefs'));
    }


    public function show_customer(Request $request){
        $search= $request['search']??"";
        if($search !=""){
            $customers = User::where('role', '3')->where('name','LIKE',"%$search%")->get();
        }
        else{
        $customers = User::where('role', '3')->get();
        }
        return view('admin.customer_list.index', compact('customers', 'search'));
    }



    public function food_list(Request $request){
        $search= $request['search']??"";
        if($search !=""){
            $food_lists= Food::where('name','LIKE',"%$search%")->get();
        }
        else{
        $food_lists = Food::get();
        }
        return view('admin.food_list', compact('food_lists', 'search'));
    }



    public function order_list(Request $request){
        $order_lists = Order::get();
        return view('admin.order_list', compact('order_lists'));
    }
    

    public function contact_list(Request $request){
        $search= $request['search']??"";
        if($search !=""){
            $contact_lists= Contact::where('name','LIKE',"%$search%")->get();
        }
        else{
        $contact_lists = Contact::get();
        }
        return view('admin.contact_list', compact('contact_lists', 'search'));
    }


    public function details($id){
        $details = Food::find($id);
        return view ('admin.details', compact('details')); 
    }


    public function invoice(){

        $order_lists= Order::get();
        return view ('admin.invoice', compact('order_lists'));
    }


    public function requestAccept(Request $request){
        
        $id = $request->id;
        $row = Food::find($id);
        $row->status = 1;
        $row->save();
        return redirect()->route('admin.food_list')->with('message','Request Accepted successfully.');
    }
    


    public function requestReject(Request $request){
        $id = $request->id;
        $row = Food::find($id);
        $row->status = 2;
        $row->save();
        return redirect()->route('admin.food_list')->with('message','Request Rejected.');
    }


    public function requestAccepted(Request $request){
        $id = $request->id;
    
        $row = Order::find($id);
        $row->status = 1;
    
        $row->save();
    
        return redirect()->route('admin.order_list')->with('message','Request Accepted successfully.');
    }
    
    public function requestRejected(Request $request){
        $id = $request->id;
    
        $row = Order::find($id);
    
        $row->status = 2;
    
        $row->save();
    
        return redirect()->route('admin.order_list')->with('message','Request Rejected.');
    }

    
}
