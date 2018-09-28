<?php

class Voto {


    private $pdo;

    public function __construct($pdo){

        $this->pdo = $pdo;

    }



    public function salvarVoto($id_filme, $nota){

        $sql = "INSERT INTO votos SET id_filme = :id_filme, nota = :nota";
        $sql = $this->pdo->prepare($sql);
        $sql->bindValue(":id_filme", $id_filme);
        $sql->bindValue(":nota", $nota);
        $sql->execute();


    }

    public function calcularMedia($id){

        $sql = "UPDATE filmes SET media = (select (SUM(nota)/COUNT(*)) from votos where votos.id_filme = filmes.id) WHERE id = :id";
        $sql = $this->pdo->prepare($sql);
        $sql->bindValue(":id", $id);
        $sql->execute();

    }



}



?>