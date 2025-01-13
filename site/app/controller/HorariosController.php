<?php

namespace app\Controller;

class HorariosController
{
    public function index()
    {
        session_start();

        //Verifica se o usuário está logado e se ele é um administrador ou professor
        if (!$_SESSION) {
            header("Location: /projetoscti26/forbidden");
            exit();
        }

        //Tela de Horários
        require_once __DIR__ . '../../view/Horarios.php';
        exit();
    }
}
