<?php

namespace app\Controller;

require_once __DIR__ . '/../dao/DisponibilidadeDAO.php';
require_once __DIR__ . '/../dto/Disponibilidade.php';
require_once __DIR__ . '/../dao/UsuarioDAO.php';

use app\DTO\Disponibilidade;
use app\DAO\DisponibilidadeDAO;
use app\DAO\UsuarioDAO;

class SelecionarHorariosController
{
    public function index()
    {
        session_start();

        //Verifica se o usuário é administrador ou professor
        if (!$_SESSION) {
            header("Location: /projetoscti26/forbidden");
            exit();
        }

        require_once __DIR__ . '../../view/SelecionarHorarios.php';
        exit();
    }

    public function salvarHorarios()
    {
        session_start();

        //Verifica se o usuário é administrador ou professor
        if (isset($_SESSION['adm'])) {
            $email = $_SESSION['adm'];
        } else {
            $email = $_SESSION['email'];
        }

        $usuarioDAO = new UsuarioDAO();
        $id = $usuarioDAO->buscarUsuarioPorEmailId($email);

        //Salva os horários selecionados pelo professor
        for ($i = 1; $i <= 84; $i++) {
            //Se não houver o post do checkbox i
            if (!isset($_POST["$i"])) {
                $disponibilidade = new Disponibilidade(null, $id, $i);
                $disponibilidadeDAO = new DisponibilidadeDAO();
                $disponibilidadeDAO->create($disponibilidade);
            }
        }

        exit();
    }
}
