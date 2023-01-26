<?php
session_start();
include_once("conexao.php");

$nomesobrenome = $_POST['nomesobrenome'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$cpf = $_POST['cpf'];

// echo $nomesobrenome, '<br>';
// echo $email, '<br>';
// echo $telefone, '<br>';
// echo $cpf, '<br>';

$result_usuario = "INSERT INTO `passageiro` (`idPassageiro`, `nomePassageiro`, `cpfPassageiro`, `telefonePassageiro`, `emailPassageiro`) VALUES (NULL, '$nomesobrenome', '$cpf', '$telefone', '$email')";
$resultado_usuario = mysqli_query($conn, $result_usuario);

if (mysqli_insert_id($conn)){
    $_SESSION['msg'] = "Usuário cadastrado com sucesso";
    header("Location: principal.html");
}else{
    header("Location: index.php");
}

?>