<?php

namespace App\Http\Controllers;
use App\Models\Food;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Chef;
use App\Models\Category;

use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;

class ChefController extends Controller
{
    public function profile(Request $request){
        $chef = auth()->user();
        return view('chef.profile', compact('chef'));
    }

    public function index(Request $request){
        $foods= Food::where('chef_id', auth()->user()->id)->get();
        return view('chef.food.index', compact('foods'));
    }

    public function create(Request $request){
        $categories = Category::get();
        return view('chef.food.create', compact('categories'));
    }

    public function store(Request $request){
        $validated = $request->validate([
            'name' => 'required',
            'photo'=> 'required',
            'category'=> 'required',
            'price'=> 'required',
            'description'=> 'required',
            'ingredient'=> 'required',
        ]);

        if($request->file('photo')){
            $photo = Storage::disk('public')->put('backend/img/food', $request->file('photo'));
        }

        Food::create([
            'name' => $request->name,
            'photo'=> $photo,
            'category'=> $request->category,
            'price'=> $request->price,
            'description'=> $request->description,
            'ingredient'=> $request->ingredient,
            'chef_id'=> auth()->user()->id,
            'chef_name'=> auth()->user()->name,
        ]);

        return redirect()->route('chef.food.index')->with('success', 'Food added successfully.');
    }



    public function order_list(){
        $order_lists = Order::where('chef_id', auth()->user()->id)->get();

        return view ('chef.order_list', compact('order_lists'));
    }
    
    


     // edit
     public function edit($id){
        $food = Food::find($id);
        $categories= Category::get();
        return view('chef.food.edit', compact('food', 'categories'));
    }

    //update
    public function update(Request $request, $id){
        $validated = $request->validate([
            'name' => 'required',
            'category'=> 'required',
            'price'=> 'required',
            'description'=> 'required',
            'ingredient'=> 'required',
        ]);

        $food = Food::find($id);

        if($request->file('photo')){
            $photo = Storage::disk('public')->put('backend/img/food', $request->file('photo'));
        }else{
            $photo = $food->photo;
        }

        $food->name = $request->name;
        $food->photo = $photo;
        $food->category = $request->category;
        $food->price = $request->price;
        $food->description = $request->description;
        $food->ingredient = $request->ingredient;

        $food->save();
    
        return redirect()->route('chef.food.index')->with('success', 'Food updated successfully.');
    }


// Delete

    public function delete($id){
        $food = Food::find($id);

        $food->delete();

        return redirect()->route('chef.food.index');
    }
    
}