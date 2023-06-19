<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Lead;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Mail\NewContact;

class LeadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */



    public function store(Request $request)
    {
        $data = $request->all();
        $validator = Validator::make($data, [
            "name"=>["required"],
            "address" => ["required","email"],
            "body" => ["required"],
        ]);
        if($validator->fails()){
            return response()->json([
                'success' => false,
                'errors' => $validator->errors()
            ]);
        }
        $new_Lead = new Lead();
        $new_Lead->fill($data);
        $new_Lead->save();

      Mail::to('info@project.com')->send(new NewContact ($new_Lead));

        return response()->json([
    'success' =>true,
        ]);
    }

}

