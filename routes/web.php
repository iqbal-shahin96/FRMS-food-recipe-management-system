<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ChefController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\CategoryController ;
use App\Http\Controllers\FoodController ;
use App\Models\Food;
use App\Models\User;
use App\Models\Order;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[Controller::class,'index'])->name('indexPage');
Route::get('/about',[Controller::class,'about'])->name('aboutPage');
Route::get('/chef',[Controller::class,'chef'])->name('chefPage');
Route::get('/categories',[Controller::class,'categories'])->name('categoriesPage');
Route::get('/strawberry',[Controller::class,'strawberry'])->name('strawberryPage');
Route::get('/chocolatecoffe',[Controller::class,'chocolatecoffe'])->name('chocolatecoffePage');
Route::get('/contact',[Controller::class,'contact'])->name('contactPage');
Route::post('/contact',[Controller::class,'contact_form'])->name('contact_form');
Route::get('/recipe',[Controller::class,'recipe'])->name('recipePage');
Route::get('/details/{id}',[Controller::class,'details'])->name('details');
Route::post('/payment',[Controller::class,'payment'])->name('payment');


// admin group
Route::middleware(['auth', 'admin'])->group(function () {
    //category
    Route::get('/admin/category/index', [CategoryController::class, 'index'])->name('admin.category.index');
    Route::get('/admin/category/create', [CategoryController::class, 'create'])->name('admin.category.create');
    Route::get('/admin/category/edit/{id}', [CategoryController::class, 'edit'])->name('admin.category.edit');
    Route::post('/admin/category/store', [CategoryController::class, 'store'])->name('admin.category.store');
    Route::get('/admin/category/delete/{id}', [CategoryController::class, 'delete'])->name('admin.category.delete');


    //admin dashboard
    Route::get('/admin/dashboard', function () {
        
        $total_chef = User::where('role', '2')->count();
        $total_customer = User::where('role', '3')->count();
        $total_recipe = Food::where('status', '1')->get()->count();
        $total_tnx = Order::where('status', '1')->sum('price');

        return view('admin.index', compact('total_chef', 'total_customer','total_recipe', 'total_tnx'));
        
    })->name('admin.dashboard');
       
    Route::get('/admin/profile',[AdminController::class, 'profile'])->name('admin.profile');
    Route::get('/admin/invoice',[AdminController::class,'invoice'])->name('admin.invoice');

    //Admin views the Chefs & Customers
    Route::get('/admin/chef/index', [AdminController::class, 'show_chef'])->name('admin.chef.index');
    Route::get('/admin/customer/index', [AdminController::class, 'show_customer'])->name('admin.customer.index');

    Route::get('/admin/details/{id}',[AdminController::class,'details'])->name('admin.details');
    Route::get('/admin/food_list', [AdminController::class, 'food_list'])->name('admin.food_list');
    Route::get('/admin/order_list', [AdminController::class, 'order_list'])->name('admin.order_list');
    Route::get('/admin/contact_list', [AdminController::class, 'contact_list'])->name('admin.contact_list');


    //Recipe accept/reject by admin
    Route::post('/request/accept', [AdminController::class, 'requestAccept'])->middleware(['auth', 'admin'])->name('admin.request.accept');
    Route::post('/request/reject', [AdminController::class, 'requestReject'])->middleware(['auth', 'admin'])->name('admin.request.reject');


    //order accept/reject by admin
    Route::post('/request/accepted', [AdminController::class, 'requestAccepted'])->middleware(['auth', 'admin'])->name('admin.request.accepted');
    Route::post('/request/rejected', [AdminController::class, 'requestRejected'])->middleware(['auth', 'admin'])->name('admin.request.rejected');
});
// admin group end






// chef group
Route::middleware(['auth', 'chef'])->group(function () {

    //chef dashboard
    Route::get('/chef/dashboard', function () {
        $total_recipe = Food::where('status', '1')->where('chef_id', auth()->user()->id)->count();
        $total_sale = Order::where('status', '1')->where('chef_id', auth()->user()->id)->count();
        $total_price = Order::where('status', '1')->where('chef_id', auth()->user()->id)->sum('price');

        return view('chef.index', compact('total_recipe', 'total_sale', 'total_price'));
    })->name('chef.dashboard');

    Route::get('/chef/profile',[ChefController::class, 'profile'])->name('chef.profile');


    //food Chef
    Route::get('/chef/food/index', [ChefController::class, 'index'])->name('chef.food.index');
    Route::get('/chef/food/create', [ChefController::class, 'create'])->name('chef.food.create');
    Route::get('/chef/food/edit/{id}', [ChefController::class, 'edit'])->name('chef.food.edit');
    Route::post('/chef/food/update/{id}', [ChefController::class, 'update'])->name('chef.food.update');

    Route::post('/chef/food/store', [ChefController::class, 'store'])->name('chef.food.store');
    Route::get('/chef/food/delete/{id}', [ChefController::class, 'delete'])->name('chef.food.delete');

    //chef can views customer list
    Route::get('/chef/order_list', [ChefController::class, 'order_list'])->name('chef.order_list');
});
// chef group end






// customer group
Route::middleware(['auth', 'customer'])->group(function () {
    //dashboard
    Route::get('/customer/dashboard', function () {
        $total_buy = Order::where('status', '1')->where('user_id', auth()->user()->id)->count();
        $total_paid = Order::where('status', '1')->where('user_id', auth()->user()->id)->sum('price');

        return view('customer.index', compact('total_buy', 'total_paid'));
    })->name('customer.dashboard');
    Route::get('/customer/profile',[CustomerController::class, 'profile'])->name('customer.profile');
    Route::get('/customer/order_list',[CustomerController::class, 'order_list'])->name('customer.order_list');
    Route::get('/customer/details/{id}',[CustomerController::class,'details'])->name('customer.details');
    Route::get('/customer/invoice/{id}',[CustomerController::class,'invoice'])->name('customer.invoice');

});
// customer group end



require __DIR__.'/auth.php';
