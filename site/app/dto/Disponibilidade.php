<?php

namespace app\DTO;

class Disponibilidade
{
    private $id;
    private $id_usuario;
    private $id_horario;

    public function __construct($id, $id_usuario, $id_horario)
    {
        $this->id = $id;
        $this->id_usuario = $id_usuario;
        $this->id_horario = $id_horario;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getIdUsuario()
    {
        return $this->id_usuario;
    }

    public function setIdUsuario($id_usuario)
    {
        $this->id_usuario = $id_usuario;
    }

    public function getIdHorario()
    {
        return $this->id_horario;
    }

    public function setIdHorario($id_horario)
    {
        $this->id_horario = $id_horario;
    }
}
