conexao php

<?php

    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $dbname = "muze";

    $conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

?>