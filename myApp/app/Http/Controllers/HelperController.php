<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use URL;
use App\OauthClient;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use Image;

class HelperController extends Controller
{
    protected static $status_code = 200;
    protected static $client_id = 2;
    public static function response($status, $msg = '', $data = array(), $extra = array())
    {
        if( (is_array($data) || is_object($data)) && count($data) == 0 && count($extra) == 0)
            return response(['status' => $status, 'message' => $msg], self::$status_code);
        else if( is_array($extra) and count($extra) == 0)
            return response(['status' => $status, 'message' => $msg, 'data' => $data], self::$status_code);
        else
            return response(['status' => $status, 'message' => $msg, 'data' => $data, $extra], self::$status_code);
    }
    public static function login($email, $password)
    {
        $client = OauthClient::find(static::$client_id);
        // $apiConsumer = app()->make('apiconsumer');
        // $data = [
        //         'grant_type' => 'password',
        //         'client_id' => $client->id,
        //         'client_secret' => $client->secret,
        //         'username' => $email,
        //         'password' => $password,
        //         'scope' => '*',
        //     ];

            $http = new Client;

        $response = $http->post(url('').'/oauth/token', [
            'form_params' => [
                'grant_type' => 'password',
                'client_id' => $client->id,
                'client_secret' => $client->secret,
                'username' => $email,
                'password' => $password,
                'scope' => '',
            ],
        ]);
        return json_decode((string) $response->getBody(), true);
        // return $apiConsumer->post('/oauth/token', $data);
    }
    public static function refreshToken($refresh_token)
    {
        $client = OauthClient::find(static::$client_id);

        $apiConsumer = app()->make('apiconsumer');
        $data = [
            'grant_type' => 'refresh_token',
            'refresh_token' => $refresh_token,
            'client_id' => $client->id,
            'client_secret' => $client->secret,
            'scope' => '',
        ];
        return $apiConsumer->post('/oauth/token', $data);
    }

    public static function storeimage($file){
    
        $modeldata = array();
        $name = time() .'_'. $file->getClientOriginalName();
        $filePath = $name;
        
        $image =  Storage::disk('local')->put($filePath, file_get_contents($file));
        $modeldata['image'] = url('image').'/'.$filePath;
        return $modeldata;
    }

    public function getImage($image){
        return Image::make(Storage::disk('local')->get($image))->response();
    }
}
