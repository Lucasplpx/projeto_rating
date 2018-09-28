<?php

try{

    $pdo = new PDO("mysql:dbname=projeto_rating;host=localhost", "root", "");

}catch(PDOException $e){
    die($e->getMessage());
}

?>