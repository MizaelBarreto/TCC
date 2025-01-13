<?php

namespace app\Controller;

require_once __DIR__ . '/../Funcoes.php';
require_once __DIR__ . '/../dao/UsuarioDAO.php';

use app\DAO\UsuarioDAO;

class LoginController
{
    public function index()
    {
        require_once __DIR__ . '../../view/Login.php';
        exit();
    }

    // Função para logar no sistema
    public function logar()
    {
        session_start();

        //Instancia o DAO de usuário
        $usuarioDAO = new UsuarioDAO();

        // Pega os valores dos campos do formulário e verifica se email e senha batem
        if (isset($_POST['email']) && isset($_POST['senha']) && $usuarioDAO->buscarUsuarioPorEmailSenha($_POST['email'], $_POST['senha'])) {
            $email = $_POST['email'];

            defineCookie("cookie_email", $email, 14400);
        } else {
            header("Location: /projetoscti26/login?erro=1");
            exit();
        }

        //Envia o email para o usuário
        $html = "<h1>Olá!</h1><br><h3>Se não reconhece essa nova atividade por favor entre em contato</h3><br>";
        enviaEmail($email, $usuarioDAO->buscarUsuarioPorEmailNome($email), "Nova atividade", $html);

        //Verifica se o usuário é administrador ou professor
        if ($usuarioDAO->verificarAdm($email)) {
            defineSessao("adm", $email);

            header("Location: /projetoscti26/administrador");
            exit();
        } else {
            defineSessao("professor", $email);

            header("Location: /projetoscti26/professor");
            exit();
        }
    }
}
