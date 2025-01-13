<?php

namespace app\Controller;

require_once __DIR__ . '/../Funcoes.php';
require_once __DIR__ . '/../dao/UsuarioDAO.php';

use app\DAO\UsuarioDAO;

class EsqueciController
{
    public function index()
    {
        require_once __DIR__ . '/../view/Esqueci.php';
        exit();
    }

    public function enviarCodigo()
    {
        session_start();

        //Instancia um novo objeto da classe UsuarioDAO
        $usuarioDAO = new UsuarioDAO();

        //Verifica se o email foi enviado e se existe no banco de dados
        if (isset($_POST['email'])) {
            $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
            if ($usuarioDAO->buscarUsuarioPorEmail($email)) {
                //Gera um código de recuperação de senha e envia para o email do usuário
                $_SESSION['codigo'] = geraSenha();
                $_SESSION['email'] = $email;

                //Envia um email para o usuário com o código de recuperação de senha
                $html = "<h1>Olá!</h1><br><h3>Seu código de recuperação de senha é: " . $_SESSION['codigo'] . "</h3><br>";
                enviaEmail($email, "Usuário", "Código de recuperação de senha", $html);

                //Redireciona o usuário para a página de mudança de senha
                header("Location: /projetoscti26/mudasenha");
                exit();
            } else {
                header("Location: /projetoscti26/esqueci");
                exit();
            }
        } else {
            header("Location: /projetoscti26/esqueci");
            exit();
        }
    }
}
