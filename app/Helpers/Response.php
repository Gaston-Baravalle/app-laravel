<?php

namespace App\Helpers;

class Response{

    public static function success($message, $data = null, $httpCode = 200){
        $body = [
            'code'    => $httpCode,
            'status'  => 'success',
            'message' => $message,
            'data'    => $data
        ];
        return response()->json($body, $httpCode);
    }

    public static function fail($message, $httpCode = 400){
        $body = [
            'code'    => $httpCode,
            'status'  => 'fail',
            'message' => $message
        ];
        return response()->json($body, $httpCode);
    }

    public static function error($message, $httpCode = 500){
        $body = [
            'code'    => $httpCode,
            'status'  => 'error',
            'message' => $message
        ];
        return response()->json($body, $httpCode);
    }
}
