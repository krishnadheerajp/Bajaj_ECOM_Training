<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\User;
use Hash;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;


class UserController extends Controller
{

    // To fetch all the users
    public function index()
    {
        $users=User::all();
        return $users;
    }

    // To register a new user
    public function store(Request $request)
    {
        $user = new User;
        $request->validate([
            'name'=>'required',
            'email'=>'required | email',
            'password'=>'required',
            'contact'=>'required'
        ]);
        $user->name=$request->name;
        $user->email=$request->email;
        $user->contact=$request->contact;
        $user->password=Hash::make($request->password);
        $user->save();
        return ["success"=>true,"message"=>"User Registered"];
    }

    // To authenticate a user when they login
    public function login(Request $request){
        $request->validate([
            'email'=>'required | email',
            'password'=>'required'
        ]);
        $credentials=$request->only(['email','password']);
        if(Auth::attempt($credentials)){
            $token=$request->user()->createToken('login_token')->plainTextToken;
            return ["token"=>$token,"user"=>["id"=>$request->user()->id,"name"=>$request->user()->name,"role"=>$request->user()->role]];
        }
        return "some problem";
    }

    // To test the function accessibility based on token
    public function checkToken(){
        return ["message"=>"Token authenticated"];
    }

    // To find a particular user based on his id
    public function show(string $id): Response
    {
        $user=User::find($id);
        return $user;
    }

    // To update the information given by the user
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name'=>'required',
            'email'=>'required | email',
            'password'=>'required',
            'contact'=>'required'
        ]);
        $user = User::find($id);
        $user->name=$request->name;
        $user->email=$request->email;
        $user->contact=$request->contact;
        $user->password=Hash::make($request->password);
        $user->save();
        return ["success"=>true,"message"=>"User Updated"];
    }
}
