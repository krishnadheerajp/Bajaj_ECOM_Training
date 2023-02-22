<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\User;
use App\Models\UserProduct;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Eastwest\Json\Facades\Json;

class UserProductController extends Controller
{

    // To fetch all the cart items
    public function index()
    {    
        $data=UserProduct::all();
        return $data;
    }

    // To fetch all the cart items of a particular user
    public function userProducts($id){
        $data=User::find($id)->products()->where('order_status','!=','1')->get();
        return $data;
    }
    
    // To fetch all the orders placed by a particular user 
    public function myorders($id){
        $data=User::find($id)->products()->where('order_status','1')->get();
        return $data;
    }

    // To store a new product added by the user into the cart and sending the updated cart
    public function store(Request $request)
    {
        $request->validate([
            'user_id'=>'required',
            'product_id'=>'required',
            'amount'=>'required',
        ]);
        $userProduct=new UserProduct;
        $userProduct->user_id=$request->user_id;
        $userProduct->product_id=$request->product_id;
        $userProduct->amount=$request->amount;
        $userProduct->save();
        $cart=$this->userProducts($request->user_id);
        return ["success"=>true,"message"=>"Added to Cart","cartProducts"=>$cart];
    }

    // To show all the products of a user ignoring the order status
    public function show(string $id)
    {
        $data=User::find($id)->products()->get();
        return $data;
    }

    // To update the cart based on changes made by user
    public function update(Request $request, string $id)
    {
        $request->validate([
            'quantity'=>'required',
            'amount'=>'required',
        ]);
        $item=UserProduct::find($id);
        $item->quantity=$request->quantity;
        $item->amount=$request->amount;
        $item->save();
        return ["success"=>true,"message"=>"Updated the Cart"];
    }

    // To remove an item from the cart
    public function removeFromCart($user_id,$product_id){
        $item=UserProduct::where(['user_id'=>$user_id,"product_id"=>$product_id]);
        $item->delete();
        $cart=$this->userProducts($user_id);
        return ["success"=>true,"message"=>"Removed from cart","cartProducts"=>$cart];
    }

    // To delete a cart item
    public function destroy(string $id)
    {
        $item=UserProduct::find($id);
        $item->delete();
    }

    // To place the items in orders from cart
    public function orderItems($itemIds){
        $itemIds=explode(" ",$itemIds);
        for($i=0;$i<count($itemIds);$i++){
            $od = UserProduct::find($itemIds[$i]);
            $od->order_status = 1;
            $od->save();
        }
        return ["success"=>"true","message"=>"Order Successful"];
    }
}
