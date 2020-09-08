<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\HelperController as Common;
use App\User;
use App\UserDetail;

class UserController extends Controller
{
    public function register(Request $req)
    {
        // dump($req->all());
        $req->validate([
            'name' => 'required|string',
            'email'	=> 'required|email:rfc|unique:users,email',
            'password'	=> 'required',
            'phone'	=> 'required|string|min:10|max:15',
            'profile_image'	=> 'required|file',
        ]);

        if ($req->hasFile('profile_image')) {
            $file = $req->file('profile_image');
            $filedata = Common::storeimage($file);
            $req->request->remove('profile_image');
            $profile_image = $filedata['image'];
        }

        $user = new User;
        $user->name = $req->name;
        $user->email = $req->email;
        $user->password = bcrypt( $req->password );
        $user->phone = $req->password;
        $user->profile_image = $profile_image;
        $user->save();
        return Common::response('success', 'Register successfully!');
    }

    public function login(Request $req)
    {
        $req->validate([
            'email'	=> 'required|email:rfc|exists:users,email',
            'password'=>'required'
        ]);

        if ( \Auth::attempt([ 'email' => $req->email, 'password' => $req->password ]) === false) {
            return Common::response('error', 'Password mismatch!');
        }else{
            $response = Common::login($req->email, $req->password); //Passport login
            $data['user'] = User::where('email', $req->email)->first();
            $data['auth'] = $response;
            return Common::response('success', 'Login Successfull!', $data);
        }
    }

    public function createUpdateUserDetails(Request $req)
    {
        // dd($req->all());
        // $req->validate([
        //     'father' => 'string',
        //     'mother' => 'string',
        //     'wife' => 'string',
        //     'child' => 'string',
        //     'address' => 'string',
        // ]);
        $user_id = \Auth::user()->id;
        $user_details = UserDetail::where('user_id', $user_id)->first();
        if($user_details === null){
            $user_details = new UserDetail();
        }
        $user_details->user_id = $user_id;
        $user_details->father = $req->father;
        $user_details->mother = $req->mother;
        $user_details->wife = $req->wife;
        $user_details->child = $req->child;
        $user_details->address = $req->address;
        $user_details->save();
        return Common::response('success', 'User family and address details saved successfully!');
    }

    public function logout(Request $request)
    {
        \App\OauthAccessToken::where('user_id', \Auth::user()->id)->update([
            'revoked' => true
        ]);            
        return Common::response('success', 'Logout Successfully!');
    }

}