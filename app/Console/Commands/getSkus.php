<?php

namespace App\Console\Commands;

use App\Credentials;
use App\Skus;
use App\Helpers\RequestApi;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Log;

class getSkus extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'get:skus';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Obtener listado de SKUs';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        Log::info('[GET SKU] INICIO DE PROCESO ');

        /*Obtenemos las cuentas*/
        $cuentas = Credentials::all();

        foreach ($cuentas as $c) {
            $requestApi = new RequestApi($c);
            $route = 'catalog_system/pvt/sku/stockkeepingunitids?page=1&pagesize=1000';
            $response = $requestApi->request('GET', $route);

            //dd($response);
            foreach ($response as $sku) { 

                $s = Skus::where("SkuId",$sku)->first();
                if($s == null){
                    $route = 'catalog_system/pvt/sku/stockkeepingunitbyid/'.$sku;
                    $skuInfo = $requestApi->request('GET', $route);
                    $s = new Skus();
                    $s->SkuId = $skuInfo->Id;
                    $s->NameComplete = $skuInfo->NameComplete;
                    $s->ProductId = $skuInfo->ProductId;
                    $s->save();
                }  
                
            }
            
        }          

        Log::info('[GET SKU] FIN DE PROCESO ');
    }  


}
