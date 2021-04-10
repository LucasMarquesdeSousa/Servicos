<?php
spl_autoload_register(function($nome_arquivo){
    if(file_exists("Controllers/$nome_arquivo.php")){
        require "Controllers/$nome_arquivo.php";
    }else if(file_exists("Core/$nome_arquivo.php")){
        require "Core/$nome_arquivo.php";
    }else if(file_exists("Models/$nome_arquivo.php")){
        require "Models/$nome_arquivo.php";
    }
});