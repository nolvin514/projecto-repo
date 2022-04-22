<?php

namespace Dao\Mnt;
use Dao\Table;

class Personas extends Table{
    public static function obtenerTodos(){
        $sqlstr = "select * from personas;";
        return self::obtenerRegistros(
            $sqlstr,
            array()
        );
    }
    public static function obtenerPorCatId(){
        $sqlstr = "select * from personas where idpersona=:idpersona;";
        return self::obtenerRegistros(
            $sqlstr,
            array("idpersona"=>$idpersona);
        );
    }
}

?>