<?php

namespace Controllers\Mnt\Vehiculos;

use Controllers\PublicController;
use Views\Renderer;

class Vehiculo extends PublicController{

    private $_modeStrings = array(
        "INS"=> "Nuevo Vehiculo",
        "UPD" => "Editar %s (%s)",
        "DSP" => "Detalle de %s (%s)",
        "DEL"=> "Eliminando %s (%s)"
    );

    private $_viewData = array(
        "mod"=>"INS",
        "idcarro"=>0,
        "placa"=>"",
        "modelo"=>"",
        "anio"=>"",
        "vin"=>"",
        "modeDsc"=>"",
        "readonly"=>false,
        "isInsert"=>false
    );

    private function init(){
        if(isset($_GET["mode"])){
            $this->_viewData["mode"] = $_GET["mode"];
        }
        if(isset($_GET["idcarro"])){
            $this->_viewData["idcarro"] = $_GET["idcarro"];
        }
        if(!isset($this->$_modeStrings[$this->_viewData["mode"]])){
            error_log($this->toString()."Mode not valid ".$this->_viewData["mode"],0);
            \Utilities\Site::redirectToWithMsg('index.php?page=mnt.vehiculos.vehiculos', 'Sucedio un error al procesar la pagina.');
        }
        if($this->_viewData["mode"]!=="INS" && intval($this->_viewData["idcarro"],10)!==0){
            $this->_viewData["mode"] !== "DSP";
        } 
    }

    private function handlePost(){

    }

    private function prepareViewData(){
        if($this->_viewData["mode"]=="INS"){

        }else{
            $tempVehiculo = \Dao\Mnt\Vehiculos::obtenerPorIdCarro(intval($this->_viewData["idcarro"],10));
            \Utilities\ArrUtils::mergeFullArrayTo($tempVehiculo, $this->_viewData);
            $this->_viewData["modeDsc"] = sprintf($this->_modeStrings[$this->_viewData["mode"]],
            $this->_viewData["placa"],
            $this->_viewData["idcarro"]
        );
        }
    }

    public function run(): void{
        $this->init();
        if($this->isPostBack()){
            $this->handlePost();
        }
        $this->prepareViewData();
        Renderer::render('mnt/Vehiculo', $this->_viewData);
    }
}


?>