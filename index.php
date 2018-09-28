<?php
require 'config.php';
require 'classes/Filme.php';

$filme = new Filme($pdo);

$lista = $filme->getFilmes();

?>

<?php foreach ($lista as $filme):?>

    <fieldset>
        <strong><?php echo $filme['titulo']; ?></strong> <br/>
        <a href="votar.php?id=<?php echo $filme['id'];?>&voto=1"><img src="star.png" height="20" alt="Estrela"/></a>
        <a href="votar.php?id=<?php echo $filme['id'];?>&voto=2"><img src="star.png" height="20" alt="Estrela"/></a>
        <a href="votar.php?id=<?php echo $filme['id'];?>&voto=3"><img src="star.png" height="20" alt="Estrela"/></a>
        <a href="votar.php?id=<?php echo $filme['id'];?>&voto=4"><img src="star.png" height="20" alt="Estrela"/></a>
        <a href="votar.php?id=<?php echo $filme['id'];?>&voto=5"><img src="star.png" height="20" alt="Estrela"/></a>
        ( <?php echo $filme['media']; ?> )
    </fieldset>

<?php endforeach;?>

