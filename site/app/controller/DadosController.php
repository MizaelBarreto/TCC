<?php

namespace app\Controller;

require_once __DIR__ . '/../dao/UsuarioDAO.php';
require_once __DIR__ . '/../dao/DisciplinaDAO.php';
require_once __DIR__ . '/../dao/AtribuicaoDAO.php';
require_once __DIR__ . '/../dao/AtribuicaoCasadaDAO.php';
require_once __DIR__ . '/../dao/LaborartorioDAO.php';
require_once __DIR__ . '/../dto/Usuario.php';
require_once __DIR__ . '/../dto/Disciplina.php';
require_once __DIR__ . '/../dto/Atribuicao.php';
require_once __DIR__ . '/../dto/AtribuicaoCasada.php';
require_once __DIR__ . '/../dto/Laboratorio.php';

use app\DAO\UsuarioDAO;
use app\DAO\DisciplinaDAO;
use app\DAO\AtribuicaoDAO;
use app\DAO\AtribuicaoCasadaDAO;
use app\DAO\LaboratorioDAO;
use app\DTO\Usuario;
use app\DTO\Disciplina;
use app\DTO\Atribuicao;
use app\DTO\AtribuicaoCasada;
use app\DTO\Laboratorio;

class DadosController
{
    public function index()
    {
        session_start();

        //Verifica se o usuário está logado e se ele é um administrador
        if (!isset($_SESSION['adm'])) {
            header("Location: /projetoscti26/forbidden");
            exit();
        }

        require_once __DIR__ . '/../view/Dados.php';
        exit();
    }

    //Função CRUD para manipulação de dados
    public function dados()
    {
        //Json recebido do JS de Dados.php via Horarios.js
        $jsonFile = $_POST['jsonData'];

        //Decodifica o JSON
        $data = json_decode($jsonFile, true);

        //Atribui os valores do JSON para as variáveis
        $action = $data['action'];
        $table = $data['table'];
        $response = $data['response'];

        //Verifica a tabela e a ação a ser realizada
        switch ($table) {
            case 'Professor':
                switch ($action) {
                    case 'read':
                        $response = DadosController::readUsuario($response);
                        break;
                    case 'delete':
                        $response = DadosController::deleteUsuario($response);
                        break;
                }
                break;
            case 'Disciplina':
                switch ($action) {
                    case 'create':
                        $response = DadosController::createDisciplina($response);
                        break;
                    case 'read':
                        $response = DadosController::readDisciplina($response);
                        break;
                    case 'update':
                        $response = DadosController::updateDisciplina($response);
                        break;
                    case 'delete':
                        $response = DadosController::deleteDisciplina($response);
                        break;
                }
                break;
            case 'Atribuicao':
                switch ($action) {
                    case 'create':
                        $response = DadosController::createAtribuicao($response);
                        break;
                    case 'read':
                        $response = DadosController::readAtribuicao($response);
                        break;
                    case 'update':
                        $response = DadosController::updateAtribuicao($response);
                        break;
                    case 'delete':
                        $response = DadosController::deleteAtribuicao($response);
                        break;
                }
                break;
            case 'AtribuicaoCasada':
                switch ($action) {
                    case 'create':
                        $response = DadosController::createAtribuicaoCasada($response);
                        break;
                    case 'read':
                        $response = DadosController::readAtribuicaoCasada($response);
                        break;
                    case 'update':
                        $response = DadosController::updateAtribuicaoCasada($response);
                        break;
                    case 'delete':
                        $response = DadosController::deleteAtribuicaoCasada($response);
                        break;
                }
                break;
            case 'Lab':
                switch ($action) {
                    case 'create':
                        $response = DadosController::createLaboratorio($response);
                        break;
                    case 'read':
                        $response = DadosController::readLaboratorio($response);
                        break;
                    case 'update':
                        $response = DadosController::updateLaboratorio($response);
                        break;
                    case 'delete':
                        $response = DadosController::deleteLaboratorio($response);
                        break;
                }
                break;
        }

        //Retorna o JSON
        echo json_encode($response, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);;
        exit();
    }

    //Funções CRUD

    //USUARIO
    public function readUsuario($response)
    {
        $dao = new UsuarioDAO();
        $response = $dao->read();

        return $response;
    }

    public function deleteUsuario($response)
    {
        $usuario = new Usuario($response['id'], $response['nome'], $response['email'], $response['senha'], $response['adm'], $response['prof']);

        $dao = new UsuarioDAO();
        $response = $dao->delete($usuario->getId());

        return $response;
    }

    //DISCIPLINA
    public function createDisciplina($response)
    {
        $disciplina = new Disciplina($response['id'], $response['nome']);

        $dao = new DisciplinaDAO();
        $response = $dao->create($disciplina);

        return $response;
    }

    public function readDisciplina($response)
    {
        $dao = new DisciplinaDAO();
        $response = $dao->read();

        return $response;
    }

    public function updateDisciplina($response)
    {
        $disciplina = new Disciplina($response['id'], $response['nome']);

        $dao = new DisciplinaDAO();
        $response = $dao->update($disciplina);

        return $response;
    }

    public function deleteDisciplina($response)
    {
        $disciplina = new Disciplina($response['id'], $response['nome']);

        $dao = new DisciplinaDAO();
        $response = $dao->delete($disciplina->getId());

        return $response;
    }

    //ATRIBUICAO
    public function createAtribuicao($response)
    {
        $atribuicao = new Atribuicao($response['id'], $response['ano'], $response['qntd_aulas'], 
        $response['qntd_laboratorios'], $response['sd_descricao'], $response['id_disciplina'], 
        $response['turma_nome'], $response['lab_nome'], $response['usuario_nome']);

        $dao = new AtribuicaoDAO();
        $response = $dao->create($atribuicao);

        return $response;
    }

    public function readAtribuicao($response)
    {
        $dao = new AtribuicaoDAO();
        $response = $dao->read();

        $disciplinaDAO = new DisciplinaDAO();
        $disciplinas = $disciplinaDAO->read();

        foreach ($response as $atribuicao) {
            foreach ($disciplinas as $disciplina) {
                if ($atribuicao['id_disciplina'] == $disciplina['id']) {
                    $atribuicao['id_disciplina'] = $disciplina['nome'];

                    $dados[] = $atribuicao;
                }
            }
        }

        return $dados;
    }

    public function updateAtribuicao($response)
    {
        $atribuicao = new Atribuicao($response['id'], $response['ano'], $response['qntd_aulas'], 
        $response['qntd_laboratorios'], $response['sd_descricao'], $response['id_disciplina'], 
        $response['turma_nome'], $response['lab_nome'], $response['usuario_nome']);
        
        $dao = new AtribuicaoDAO();
        $response = $dao->update($atribuicao);

        return $response;
    }

    public function deleteAtribuicao($response)
    {
        $atribuicao = new Atribuicao($response['id'], $response['ano'], $response['qntd_aulas'], 
        $response['qntd_laboratorios'], $response['sd_descricao'], $response['id_disciplina'], 
        $response['turma_nome'], $response['lab_nome'], $response['usuario_nome']);
        
        $dao = new AtribuicaoDAO();
        $response = $dao->delete($atribuicao->getId());

        return $response;
    }

    //ATRIBUICAO CASADA
    public function createAtribuicaoCasada($response)
    {
        if($response['id_atribuicao_casada'] == null) {
            $id = null;
        } else {
            $id = $response['id_atribuicao_casada'];
        }

        $atribuicaoCasada = new AtribuicaoCasada(null, $response['id_atribuicao'], $id, $response['qntd_aulas_casada']);

        $dao = new AtribuicaoCasadaDAO();
        $response = $dao->create($atribuicaoCasada);

        return $response;
    }

    public function readAtribuicaoCasada($response)
    {
        $dao = new AtribuicaoCasadaDAO();
        $response = $dao->read();

        return $response;
    }

    public function updateAtribuicaoCasada($response)
    {
        $atribuicaoCasada = new AtribuicaoCasada($response['id'], $response['atribuicaoId'], $response['atribuicaoCasadaId'], $response['qntdAulasCasada']);

        $dao = new AtribuicaoCasadaDAO();
        $response = $dao->update($atribuicaoCasada);

        return $response;
    }

    public function deleteAtribuicaoCasada($response)
    {
        $atribuicaoCasada = new AtribuicaoCasada($response['id'], $response['atribuicaoId'], $response['atribuicaoCasadaId'], $response['qntdAulasCasada']);

        $dao = new AtribuicaoCasadaDAO();
        $response = $dao->delete($atribuicaoCasada->getId());

        return $response;
    }

    //LABORATORIO
    public function createLaboratorio($response)
    {
        $laboratorio = new Laboratorio($response['id'], $response['nome']);

        $dao = new LaboratorioDAO();
        $response = $dao->create($laboratorio);

        return $response;
    }

    public function readLaboratorio($response)
    {
        $dao = new LaboratorioDAO();
        $response = $dao->read();

        return $response;
    }

    public function updateLaboratorio($response)
    {
        $laboratorio = new Laboratorio($response['id'], $response['nome']);

        $dao = new LaboratorioDAO();
        $response = $dao->update($laboratorio);

        return $response;
    }

    public function deleteLaboratorio($response)
    {
        $laboratorio = new Laboratorio($response['id'], $response['nome']);

        $dao = new LaboratorioDAO();
        $response = $dao->delete($laboratorio->getId());

        return $response;
    }
}
