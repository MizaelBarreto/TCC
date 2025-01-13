<?php

namespace app\DTO;

class Usuario
{
    private $id;
    private $nome;
    private $email;
    private $senha;
    private $adm;
    private $prof;

    // Construtor
    public function __construct($id, $nome, $email, $senha, $adm, $prof)
    {
        $this->id = $id;
        $this->nome = $nome;
        $this->email = $email;
        $this->senha = $senha;
        $this->adm = $adm;
        $this->prof = $prof;
    }

    // Getters e Setters
    public function getId()
    {
        return $this->id;
    }

    public function getNome()
    {
        return $this->nome;
    }

    public function setNome($nome)
    {
        $this->nome = $nome;
    }

    public function getEmail()
    {
        return $this->email;
    }

    public function setEmail($email)
    {
        $this->email = $email;
    }

    public function getSenha()
    {
        return $this->senha;
    }

    public function setSenha($senha)
    {
        $this->senha = $senha;
    }

    public function getAdm()
    {
        return $this->adm;
    }

    public function setAdm($adm)
    {
        $this->adm = $adm;
    }

    public function getProf()
    {
        return $this->prof;
    }

    public function setProf($prof)
    {
        $this->prof = $prof;
    }
}
