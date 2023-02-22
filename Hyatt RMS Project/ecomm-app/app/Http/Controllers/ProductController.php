<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class ProductController extends Controller
{

    // To fetch all products with categories
    public function index()
    {
        $data=Category::with('products')->get();
        return $data;
    }
    // To fetch all the products with cart
    public function allProducts($user_id)
    {
        $data=Category::with('products')->get();
        $userProducts=User::find($user_id)->products()->where('order_status','!=','1')->get();

        return ["all_products"=>$data,"cartProducts"=>$userProducts];
    }

    // To create a product
    public function store(Request $request)
    {
        $request->validate([
            'name'=>'required',
            'price'=>'required',
            'image'=>'required',
            'cid'=>'required'
        ]);
        $product=new Product;
        $product->name=$request->name;
        $product->price=$request->price;
        $product->image=$request->image;
        $product->cid=$request->cid;
        $product->save();
        return ["success"=>true,"message"=>"Product created"];
    }

    // To show a product to user who is not logged in
    public function show(string $id)
    {
        $data=Product::find($id);
        return ["selected_item"=>$data];
    }

    // To show selected item with the cart belonging to a particular user
    public function onlyshowItem($user_id,string $id)
    {
        $data=Product::find($id);
        $userProducts=User::find($user_id)->products()->get();
        return ["selected_item"=>$data,"cartProducts"=>$userProducts];
    }

    // To update the name and price of a product
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name'=>'required',
            'price'=>'required'
        ]);
        $product=Product::find($id);
        $product->name=$request->name;
        $product->price=$request->price;
        $product->save();
        return ["success"=>true,"message"=>"Product updated"];
    }

    // To remove a product
    public function destroy(string $id)
    {
        $product=Product::find($id);
        $product->delete();
        return ["success"=>true,"message"=>"Product deleted"];
    }
}
