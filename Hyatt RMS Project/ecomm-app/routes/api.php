<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserProductController;
use App\Http\Controllers\AdminController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Models\UserProduct;
use Illuminate\Foundation\Auth\User;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Category routes
Route::resource("/categories",CategoryController::class);

// Product routes
Route::resource("/products",ProductController::class);


// Resource routes for users
Route::resource("/users",UserController::class);
Route::post("/users/login",[UserController::class,'login']);
Route::middleware('auth:sanctum')->get("/users/check",[UserController::class,'checkToken']);

Route::middleware('auth:sanctum')->group(function(){
// Contact and Booking Table Routes
Route::post("/users/bookatable/{user_id}",[AdminController::class,'store']);
Route::post("/users/contact/{user_id}",[AdminController::class,'insertContact']);

// Admin Routes
Route::get("/admin/bookatable",[AdminController::class,'getBookings']);
Route::put("/admin/bookatable/{user_id}",[AdminController::class,'update']);
Route::get("/admin/contact",[AdminController::class,'getContacts']);

// Carts & Order Routes
Route::get("/cart/{id}",[UserProductController::class,'userProducts']);
Route::post("/cart/add",[UserProductController::class,'store']);
Route::put("/cart/update/{id}",[UserProductController::class,'update']);
Route::resource("/userproducts",UserProductController::class);
Route::get("/productswithcart/{user_id}",[ProductController::class,'allProducts']);
Route::get("/product/{user_id}/{product_id}",[ProductController::class,'onlyshowItem']);
Route::delete("/removefromcart/{user_id}/{product_id}",[UserProductController::class,'removeFromCart']);
Route::get("/myorders/{user_id}",[UserProductController::class,'myorders']);
Route::put("/orderitems/{itemIds}",[UserProductController::class,'orderItems']);

});