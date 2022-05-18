<?php
namespace App\Http\Controllers;
use App\Credentials;
use App\Skus;
use App\Helpers\RequestApi;
use Illuminate\Http\Request;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Log;

/**
 * Class ApiController
 * @package App\Http\Controllers
 */
class ApiController extends Controller
{
	public function get($id){
		$sku = Skus::where("SkuId",$id)->first();
		return json_encode($sku);
	}

	public function list(){
		$skus = Skus::all();
		Log::info('[GET ALL SKU] INICIO DE PROCESO '.date('Y-m-d h:i:s'));
		return json_encode($skus);
	}

	public function insert(Request $request){
		$s = Skus::where("SkuId",$request->SkuId)->first();
		if($s == null){
			$s = new Skus();
			$s->SkuId = $request->SkuId;
		}  
		$s->NameComplete = $request->NameComplete;
		$s->ProductId = $request->ProductId;
		$s->save();
		return json_encode($s);
	}
	
}
