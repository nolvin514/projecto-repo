<?php

namespace Dao\Mnt;
use Dao\Table;

class Vehiculos extends Table{
    public static function obtenerTodos(){
        $sqlstr = "select * from vehiculos;";
        return self::obtenerRegistros(
            $sqlstr,
            array()
        );
    }
    public static function obtenerPorIdCarro($idcarro){
        $sqlstr = "select * from vehiculos where idcarro=:idcarro;";
        return self::obtenerUnRegistro(
            $sqlstr,
            array("idcarro"=>$idcarro)
        );
    }
}

?>