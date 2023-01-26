<?php
session_start();
include_once("conexaobd.php");

$nome = $_POST['nome'];
$sobrenome = $_POST['sobrenome']
$email = $_POST['email'];
$cpf = $_POST['cpf'];

// echo $nomesobrenome, '<br>';
// echo $email, '<br>';
// echo $telefone, '<br>';
// echo $cpf, '<br>';

$result_usuario = "INSERT INTO `cliente` (`idCliente`, `nomeCliente`, `emailCliente`, `cpfCliente`,'sobrenomeCliente') VALUES (NULL, '$nome','$sobrenome','$email','$cpf'  )";
$resultado_usuario = mysqli_query($conn, $result_usuario);

if (mysqli_insert_id($conn)){
    $_SESSION['msg'] = "Usuário cadastrado com sucesso";
    header("Location: principal.html");
}else{
    header("Location: index.php");
}

?>