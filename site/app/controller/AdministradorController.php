<?php

namespace app\Controller;

require_once __DIR__ . '/../dao/DisponibilidadeDAO.php';
require_once __DIR__ . '/../conexao/ConexaoAPI.php';

use app\DAO\DisponibilidadeDAO;
use app\Conexao\ConexaoAPI;

class AdministradorController
{
    public function index()
    {
        session_start();

        //Verifica se o usuário está logado e se ele é um administrador
        if (!isset($_SESSION['adm'])) {
            header("Location: /projetoscti26/forbidden");
            return;
        }

        //Tela Administrador
        require_once __DIR__ . '/../view/Administrador.php';
        $gerarhorarios = $this->disponibilidadeProf();
        echo $gerarhorarios;
        exit();
    }

    //Função para gerar os horários(chamar a API)
    public function gerarHorarios()
    {
        session_start();

        //Verifica se o usuário está logado e se ele é um administrador
        if (!isset($_SESSION['adm'])) {
            header("Location: /projetoscti26/login");
            exit();
        }

        //Instanciando a classe ConexaoAPI
        $con = new ConexaoAPI();

        //Requisição GET para a API
        $response = $con->get();

        if ($response->getStatusCode() == 200) {
            $json = $response->getBody()->getContents();

            //Salvando o json
            $this->downloadJson($json);

            //Redirecionando para a página de edição de horários
            header("Location: /projetoscti26/editarhorarios");
            exit();
        } else {
            echo "Erro ao gerar os horários!";
            exit();
        }
    }

    //Função para baixar o json
    private function downloadJson($json)
    {
        //Nome do arquivo
        $filename = "horarios.json";

        //Configurações para o download
        header('Content-Description: File Transfer');
        header('Content-Type: application/json');
        header('Content-Disposition: attachment; filename="' . $filename . '"');
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . strlen($json));

        //Baixando o arquivo
        readfile($json);
    }

    //Função para verificar se todos os professores puseram algum horário de indisponibilidade
    private function disponibilidadeProf()
    {
        //Verficando se todos os professores puseram algum horário de indisponibilidade 
        $select = new DisponibilidadeDAO();
        $select = $select->verificarDisponibilidadeProfessores();

        // retorna os professores que não têm nenhuma entrada na tabela disponibilidade.
        if ($select) { //Se a consulta retornar linhas, então existem professores sem disponibilidade.
            return TRUE;
        } else {
            return FALSE;
        }

        exit();
    }
}
