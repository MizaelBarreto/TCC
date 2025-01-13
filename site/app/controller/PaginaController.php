<?php

namespace app\Controller;

class PaginaController
{
    public function notFound()
    {
        require_once __DIR__ . '../../view/PaginaNaoEncontrada.php';
        exit();
    }

    public function forbidden()
    {
        require_once __DIR__ . '../../view/Proibido.php';
        exit();
    }
}