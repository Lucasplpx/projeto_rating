<?php

class Filme{

    private $pdo;

    public function __construct($pdo){

        $this->pdo = $pdo;

    }   


    public function getFilmes(){

        $lista = array();

        $sql ="SELECT * FROM filmes";
        $sql = $this->pdo->query($sql);
        
        if($sql->rowCount() > 0){
            $lista = $sql->fetchAll();
        }

        return $lista;

    }


}



?>