<?php

include_once("conexao.php");

if(isset($_POST['email'])) {
    $nome=$_POST{'nome'} ;
$sobrenome = $_POST['sobrenome'];
$email = $_POST['email'];
$cpf = $_POST['cpf'];
$senha = password_hash ($_POST['senha'], PASSWORD_DEFAULT);
$result_usuario = "INSERT INTO `cliente` (`nomeCliente`, `cpfCliente`,`idCliente`,'emailCliente','sobrenomeCliente','senhaCliente','confirmarsenhaCliente') VALUES (NULL, '$nome', '$sobrenome', '$email', '$cpf','$senha')";
$resultado_usuario = mysqli_query($conn, $result_usuario);
if (mysqli_insert_id($conn)){
    header("Location: catalogoF.html");
}else{
    header("Location: catalogoF.html");
}
}

