<?php

abstract Class Conexao {

    private static $instancia;
    
    private function __construct() {}

    public static function getConexao() {

        try {
            if (!isset(self::$instancia)) {
                //self::$instancia = new PDO("mysql:host=sql310.epizy.com;dbname=epiz_27493960_dbevento;charset=UTF8","epiz_27493960", "ztTsmL8fwx75");
                self::$instancia = new PDO("mysql:host=localhost;dbname=dbevento;charset=UTF8", "root", "000001416");
                self::$instancia->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            }
            return self::$instancia;
        } catch (PDOException $ex) {
            echo $ex->getMessage();
            die();
        }
    }

}
