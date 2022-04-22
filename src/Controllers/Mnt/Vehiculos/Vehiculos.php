<?php

namespace Controllers\Mnt\Vehiculos;

use Controllers\PublicController;
use Views\Renderer;

class Vehiculos extends PublicController{
    public function run(): void{
        $viewData = array();
        $viewData["vehiculos"] = \Dao\Mnt\Vehiculos::obtenerTodos();
        Renderer::render('mnt/Vehiculos', $viewData);
    }
}

?>