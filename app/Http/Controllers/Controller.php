<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

use App\Models\Food;
use App\Models\Contact;
use App\Models\Order;
use App\Models\User;
use App\Models\Category;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;


    public function index(Request $request){
        
        $search= $request['search']??"";
        if($search !=""){
            $foods= Food::where('status', '1')->where('name','LIKE',"%$search%")->get();
        }
        else{
            $foods = Food::where('status', '1')->latest()->take(6)->get();
        }
        
        $Recentfoods = Food::where('status', '1')->latest()->take(9)->get();
        $popularfoods = Food::where('status', '1')->latest()->take(6)->get();
        $orders = Order::where('status', '1')->get();
        return view ('index2', compact('foods', 'search', 'orders', 'Recentfoods', 'popularfoods')); 
    }




    public function strawberry(){
        $popularfoods = Food::where('status', '1')->latest()->take(6)->get();
        return view ('strawberry', compact('popularfoods')); 
    }

    public function chocolatecoffe(){
        $popularfoods = Food::where('status', '1')->latest()->take(6)->get();
        return view ('chocolatecoffe', compact('popularfoods')); 
    }



    public function chef(){

        $chefs = User::where('role', '2')->get();
        $popularfoods = Food::where('status', '1')->latest()->take(6)->get();
        return view ('chef',  compact('chefs', 'popularfoods')); 
    }

    
//Category page with Search filter Start//
    public function categories(Request $request){
        $search= $request['search']??"";
        if($search !=""){
            $foods= Food::where('status', '1')->where('name','LIKE',"%$search%")->get();
        }
        else{
            $foods = Food::where('status', '1')->get();
        }
        $popularfoods = Food::where('status', '1')->latest()->take(6)->get();
        $categories = Category::get();
        return view ('categories', compact('foods', 'search', 'categories', 'popularfoods')); 
    }
    
//Category page with Search filter End//

    
    public function about(){
        $total_chef = User::where('role', '2')->count();
        $total_customer = User::where('role', '3')->count();
        $total_recipe = Food::where('status', '1')->get()->count();
        $popularfoods = Food::where('status', '1')->latest()->take(6)->get();

        return view ('about',compact('total_chef', 'total_customer','total_recipe', 'popularfoods')); 
    }
    public function contact(){
        $popularfoods = Food::where('status', '1')->latest()->take(6)->get();
        return view ('contact', compact('popularfoods')); 
    }

    public function contact_form(Request $request){

        $validated = $request->validate([
            'name' => 'required',
            'email' => 'required',
            'subject' => 'required',
            'message' => 'required',
        ]);

        Contact::create($validated);
        

        return redirect()->route('contactPage')->with('success', 'Message send successfully.');
    }

    

    public function details($id){
        $details = Food::find($id);
        $orders = Order::get();
        $popularfoods = Food::where('status', '1')->latest()->take(6)->get();
        return view ('details', compact('details', 'orders', 'popularfoods')); 
    }

    public function payment(Request $request){

        $validated = $request->validate([
            'food_id' => 'required',
            'food_name' => 'required',
            'chef_id' => 'required',
            'chef_name' => 'required',
            'price' => 'required',
            'user_id' => 'required',
            'user_name' => 'required',
            'method' => 'required',
            'tnx_id' => 'required',
        ]);

        Order::create($validated);

        return redirect()->back()->with('success', 'Recipe purchase successfully.');
    }


    
}
