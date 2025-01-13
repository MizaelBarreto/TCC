<?php

namespace app\DTO;

class Atribuicao
{
    private $id;
    private $ano;
    private $qntd_aulas;
    private $qntd_laboratorios;
    private $sd_descricao;
    private $id_disciplina;
    private $id_turma;
    private $id_lab;
    private $id_professor;

    public function __construct($id, $ano, $qntd_aulas, $qntd_laboratorios, $sd_descricao, $id_disciplina, $id_turma, $id_lab, $id_professor)
    {
        $this->id = $id;
        $this->ano = $ano;
        $this->qntd_aulas = $qntd_aulas;
        $this->qntd_laboratorios = $qntd_laboratorios;
        $this->sd_descricao = $sd_descricao;
        $this->id_disciplina = $id_disciplina;
        $this->id_turma = $id_turma;
        $this->id_lab = $id_lab;
        $this->id_professor = $id_professor;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getAno()
    {
        return $this->ano;
    }

    public function setAno($ano)
    {
        $this->ano = $ano;
    }

    public function getQntdAulas()
    {
        return $this->qntd_aulas;
    }

    public function setQntdAulas($qntd_aulas)
    {
        $this->qntd_aulas = $qntd_aulas;
    }

    public function getQntdLaboratorios()
    {
        return $this->qntd_laboratorios;
    }

    public function setQntdLaboratorios($qntd_laboratorios)
    {
        $this->qntd_laboratorios = $qntd_laboratorios;
    }

    public function getSdDescricao()
    {
        return $this->sd_descricao;
    }

    public function setSdDescricao($sd_descricao)
    {
        $this->sd_descricao = $sd_descricao;
    }

    public function getIdDisciplina()
    {
        return $this->id_disciplina;
    }

    public function setIdDisciplina($id_disciplina)
    {
        $this->id_disciplina = $id_disciplina;
    }

    public function getIdTurma()
    {
        return $this->id_turma;
    }

    public function setIdTurma($id_turma)
    {
        $this->id_turma = $id_turma;
    }

    public function getIdLab()
    {
        return $this->id_lab;
    }

    public function setIdLab($id_lab)
    {
        $this->id_lab = $id_lab;
    }

    public function getIdProfessor()
    {
        return $this->id_professor;
    }

    public function setIdProfessor($id_professor)
    {
        $this->id_professor = $id_professor;
    }
}
