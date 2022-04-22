<?php

namespace Controllers\Clientes; //namespace tiene el nombre de la carpeta

use Controllers\PublicController;
use Views\Renderer;

class Clientes extends PublicController{ //clase tiene el nombre del archivo
    public function run(): void{
        $viewData = array();
        $viewData["titulo"] = "Manejo de CLientes";
        $viewData["clientes"] = array(
            "Nolvin",
            "Angie",
            "Ingrid",
            "Kevin",
            "Michael"
        );
        Renderer::render('Clientes/clientes',$viewData);
    }
}


?>