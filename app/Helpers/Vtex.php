<?php

namespace App\Helpers;
use Mail;
use App\Helpers\RequestApi;
use Illuminate\Support\Facades\Log;

class Vtex 
{
	
	public function updateOrderHandlingVtex($orderId) {
		$requestApi = new RequestApi();
        $route = 'oms/pvt/orders/' . $orderId . '/start-handling';
        $response = $requestApi->request('vtex', 'POST', $route);
        Log::info("Order # ".$orderId."updateOrderHandligVtex  =>".print_r($response, true));
        return $response;
    }


}