<?php

namespace app\Controller;

class CodigoController
{
    public function index()
    {
        require_once __DIR__ . '../../view/Codigo.php';
        exit();
    }

    //Função para verificar se o código está correto
    public function verificarCodigo()
    {
        session_start();

        //Verifica se o código está correto
        if ($_POST["codigo"] == $_SESSION["codigo"]) {
            header("Location: /mudasenha");
            exit();
        } else {
            return;
        }
    }
}
