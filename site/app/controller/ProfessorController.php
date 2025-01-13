<?php

namespace app\Controller;

class ProfessorController
{
    public function index()
    {
        session_start();

        //Verifica se o usuário é professor
        if (!isset($_SESSION['professor'])) {
            header("Location: /projetoscti26/forbidden");
            exit();
        }

        //Redireciona para a página do professor
        require_once __DIR__ . '../../view/Professor.php';
        exit();
    }
}
