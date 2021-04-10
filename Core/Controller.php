<?php

Class Controller {

    public $dados;
    public $dados2;

    public function __construct() {
        $this->dados = array();
    }

    public function CarregarTemplats($nomeView, $dadosModels = array(), $dados2 = array()) {
        //somente quando vai especificar uma linha no banco de dados
        $this->dados2 = $dados2; //muitos dados
        require "Views/Template.php";
    }

    public function CarregarViewNoTemplate($nomeView, $dadosModels = array()) {
        extract($dadosModels);
        require "Views/$nomeView.php";
    }

}
