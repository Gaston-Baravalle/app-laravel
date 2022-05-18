<?php

namespace App\Helpers;

use Exception;
use Illuminate\Support\Facades\Log;
use \GuzzleHttp\Client;

class RequestApi{

    public function __construct($cuenta) {
        $this->client = new Client();

        $this->accountName = $cuenta->VTEX_accountName;
        $this->key = $cuenta->VTEX_Key;
        $this->token = $cuenta->VTEX_Token;
    }

    public function request($method, $route, $jsonRaw=null){   
        $url = "https://".$this->accountName .".vtexcommercestable.com.br/api/" . $route; 
              
        try{
            $curl = curl_init($url);
            curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $jsonRaw);
            curl_setopt($curl, CURLOPT_HTTPHEADER, array(
                        'Accept:application/json',
                        'Content-Type:application/json',
                        'X-VTEX-API-AppKey:'.$this->key,
                        'X-VTEX-API-AppToken:'.$this->token ,
            ));
            $response = json_decode(curl_exec($curl));            
            curl_close($curl);
            return $response;
        } catch (Exception $e) {
            Log::warning('RequestApiCurl Error Code: ' . $e->getCode());
            Log::warning('RequestApiCurl Error Message:' . $e->getMessage());
        } 
    }
}
