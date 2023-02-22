<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Book_A_Table;
use App\Models\Contact;
use Hash;

class AdminController extends Controller
{
    // To store the booking information given by the user
    public function store(Request $request, string $id)
    {
        $request->validate([
            'name'=>'required',
            'email'=>'required | email',
            'phone'=>'required',
            'date'=>'required',
            'time'=>'required',
            'nop'=>'required',
            'message'=>'required',
        ]);
        $Bookatable = new Book_A_Table;
        $Bookatable->name = $request->name;
        $Bookatable->email = $request->email;
        $Bookatable->phone = $request->phone;
        $Bookatable->date = $request->date;
        $Bookatable->time = $request->time;
        $Bookatable->nop = $request->nop;
        $Bookatable->message = $request->message;
        $Bookatable->user_id = $id;
        $Bookatable->save();
        return ["success" => true, "message" => "Thanks for Booking a Table"];
    }

    // To store the contact information given by user
    public function insertContact(Request $request, string $id)
    {
        $request->validate([
            'name'=>'required',
            'email'=>'required | email',
            'subject'=>'required',
            'description'=>'required'
        ]);
        $Contact = new Contact;
        $Contact->name = $request->name;
        $Contact->email = $request->email;
        $Contact->subject = $request->subject;
        $Contact->description = $request->description;
        $Contact->user_id = $id;
        $Contact->save();
        return ["success" => true, "message" => "Thanks for Contacting Us"];


    }

    // To fetch all the queries filled by users in contact form

    public function getContacts()
    {
        $data = Contact::all();
        return $data;
    }

    // To fetch all the tables booked by users
    public function getBookings(){
        $data=Book_A_Table::all();
        return $data;
    }

    // To update the table booked by a user
    public function update(Request $request, string $id)
    {
        $request->validate([
            'phone'=>'required',
            'date'=>'required',
            'time'=>'required',
            'nop'=>'required'
        ]);
        $Bookatable = Book_A_Table::find($id);
        $Bookatable->phone = $request->phone;
        $Bookatable->date = $request->date;
        $Bookatable->time = $request->time;
        $Bookatable->nop = $request->nop;
        $Bookatable->user_id = $id;
        $Bookatable->save();
        return ["success" => true, "message" => "Table Booking Updated"];

    }

    // To delete a table booked by the user
    public function destroy(string $id)
    {
        $item = Book_A_Table::find($id);
        $item->delete();

        return ["success" => true, "message" => "Booking Deleted"];
    }
}
