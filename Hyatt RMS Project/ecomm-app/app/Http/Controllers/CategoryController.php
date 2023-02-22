<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class CategoryController extends Controller
{
    /**
     * Display a listing of the categories with their products.
     */
    public function index()
    {
        $data=Category::with('products')->get();
        return $data;
    }
    /**
     * To create a new category
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'=>'required'
        ]);
        $category=new Category;
        $category->name=$request->name;
        $category->save();
        return ["message"=>"Category created"];
    }

    /**
     * Display a particular category
     */
    public function show(string $id)
    {
        $data=Category::find($id);
        return $data;
    }
}
