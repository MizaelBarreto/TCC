<?php

namespace app\Controller;

require_once __DIR__ . '/../Funcoes.php';
require_once __DIR__ . '/../dao/UsuarioDAO.php';
require_once __DIR__ . '/../dto/Usuario.php';

use app\DTO\Usuario;
use app\DAO\UsuarioDAO;

class CadastroController
{
    public function index()
    {
        require_once __DIR__ . '/../view/Cadastro.php';
        exit();
    }

    //Função para registrar um novo usuário
    public function registrar()
    {
        $UsuarioDAO = new UsuarioDAO(); //Instancia um novo objeto da classe UsuarioDAO

        /*Parámetros vindos do formulário de cadastro e verificação se não estão vazios 
            e verifica se o email já está cadastrado*/
        if (
            isset($_POST['nome']) && 
            isset($_POST['email']) && 
            isset($_POST['senha']) && 
            !$UsuarioDAO->buscarUsuarioPorEmail($_POST['email'])
        ) {
            $nome = $_POST['nome'];
            $email = $_POST['email'];
            $senha = $_POST['senha'];
            $adm = false;
        } else {
            header("Location: /projetoscti26/cadastro?error=1"); //Redireciona para a página de cadastro com mensagem de erro
            exit();
        }

        $senha = password_hash($senha, PASSWORD_DEFAULT); //Criptografa a senha do usuário

        $usuario = new Usuario(null, $nome, $email, $senha, $adm, true); //Instancia um novo usuário
        $UsuarioDAO->create($usuario); //Salva o usuário no banco de dados

        //Envia um email para o usuário cadastrado
        $html = "<h1>Olá, $nome!</h1><br><h3>Seu cadastro foi realizado com sucesso!</h3><br>";
        enviaEmail($email, $nome, "Cadastro realizado com sucesso", $html);

        //Redireciona o usuário para a página de login
        header("Location: /projetoscti26/login");
        exit();
    }
}
