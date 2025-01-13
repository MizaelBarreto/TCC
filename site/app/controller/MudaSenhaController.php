<?php

namespace app\Controller;

require_once __DIR__ . '/../Funcoes.php';
require_once __DIR__ . '/../dao/UsuarioDAO.php';

use app\DAO\UsuarioDAO;

class MudaSenhaController
{
    public function index()
    {
        require_once __DIR__ . '../../view/MudaSenha.php';
        exit();
    }

    //Função para mudar a senha do usuário
    public function mudarSenha()
    {
        session_start();

        //Verifica se senha e confirmação de senha são iguais
        if ($_POST["novasenha"] == $_POST["confirmasenha"]) {
            //Atualiza a senha do usuário no banco de dados.
            $usuarioDAO = new UsuarioDAO();
            $usuarioDAO->atualizarSenha($_SESSION['email'], password_hash($_POST['novasenha'], PASSWORD_DEFAULT));

            //Aviso de mudança de senha.
            $html = "<h1>Olá!</h1><br><h3>Sua senha foi modificada, caso não reconheça essa mudança, 
                por favor entre em contato</h3><br>";
            enviaEmail($_SESSION['email'], "Usuário", "Mudança de senha", $html);

            //Destroi a sessão e redireciona para a página de login.
            session_destroy();

            header("Location: /projetoscti26/login");
            exit();
        } else {
            header("Location: /projetoscti26/mudasenha");
            exit();
        }
    }
}
