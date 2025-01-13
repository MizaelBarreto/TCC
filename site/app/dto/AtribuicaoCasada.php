<?php

namespace app\DTO;

class AtribuicaoCasada
{
    private $id;
    private $atribuicaoId;
    private $atribuicaoCasadaId;
    private $qntdAulasCasada;

    public function __construct($id, $atribuicaoId, $atribuicaoCasadaId, $qntdAulasCasada)
    {
        $this->id = $id;
        $this->atribuicaoId = $atribuicaoId;
        $this->atribuicaoCasadaId = $atribuicaoCasadaId;
        $this->qntdAulasCasada = $qntdAulasCasada;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getAtribuicaoId()
    {
        return $this->atribuicaoId;
    }

    public function setAtribuicaoId($atribuicaoId)
    {
        $this->atribuicaoId = $atribuicaoId;
    }

    public function getAtribuicaoCasadaId()
    {
        return $this->atribuicaoCasadaId;
    }

    public function setAtribuicaoCasadaId($atribuicaoCasadaId)
    {
        $this->atribuicaoCasadaId = $atribuicaoCasadaId;
    }

    public function getQntdAulasCasada()
    {
        return $this->qntdAulasCasada;
    }

    public function setQntdAulasCasada($qntdAulasCasada)
    {
        $this->qntdAulasCasada = $qntdAulasCasada;
    }
}
