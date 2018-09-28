<?php 
require 'config.php';
require 'classes/Voto.php';




if(!empty($_GET['id']) && !empty($_GET['voto'])){

    $vt = new Voto($pdo);

    $id = intval($_GET['id']);
    $voto = intval($_GET['voto']);


    if($voto >= 1 && $voto <= 5){

        $vt->salvarVoto($id, $voto);

        $vt->calcularMedia($id);

        header("Location: index.php");
        exit;

    }






}



?>