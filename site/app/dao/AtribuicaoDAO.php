<?php

namespace app\DAO;

require_once __DIR__ . '/../dto/Atribuicao.php';
require_once __DIR__ . '/../conexao/ConexaoDB.php';

use \PDOException;
use \PDO;

use app\Conexao\ConexaoDB;
use app\DTO\Atribuicao;

class AtribuicaoDAO
{
    //Criar atribuição
    public function create(Atribuicao $atribuicao)
    {
        try {
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para inserir a atribuição
            $sql1 = "INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina) 
                     VALUES (:ano, :qntd_aulas, :qntd_laboratorios, :sd_descricao, :id_disciplina)";
            $sql2 = "INSERT INTO atribuicao_turma (id_atribuicao, id_turma) VALUES (:id_atribuicao, :id_turma)";
            $sql3 = "INSERT INTO atribuicao_lab (id_atribuicao, id_lab) VALUES (:id_atribuicao, :id_lab)";
            $sql4 = "INSERT INTO atribuicao_usuario (id_atribuicao, id_professor) VALUES (:id_atribuicao, :id_professor)";

            //Prepara e executa a query
            $stmt = $db->prepare($sql1);

            $stmt->bindParam(':ano', $atribuicao->getAno());
            $stmt->bindParam(':qntd_aulas', $atribuicao->getQntdAulas());
            $stmt->bindParam(':qntd_laboratorios', $atribuicao->getQntdLaboratorios());
            $stmt->bindParam(':sd_descricao', $atribuicao->getSdDescricao());
            $stmt->bindParam(':id_disciplina', $atribuicao->getIdDisciplina());
            $stmt->execute();

            $id_atribuicao = $db->lastInsertId('id_atribuicao');
            $stmt = $conn->conecta()->prepare($sql2);
            $stmt->bindParam(':id_atribuicao', $id_atribuicao);
            $stmt->bindParam(':id_turma', $atribuicao->getIdTurma());
            $stmt->execute();

            $stmt = $conn->conecta()->prepare($sql3);
            $stmt->bindParam(':id_atribuicao', $id_atribuicao);
            $stmt->bindParam(':id_lab', $atribuicao->getIdLab());
            $stmt->execute();

            $stmt = $conn->conecta()->prepare($sql4);
            $stmt->bindParam(':id_atribuicao', $id_atribuicao);
            $stmt->bindParam(':id_professor', $atribuicao->getIdProfessor());
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao salvar a atribuição " . $e->getMessage();
        }
    }

    //Listar atribuições
    public function read()
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para listar as atribuições
            $sql = "SELECT 
                    a.*, 
                    t.nome AS turma_nome, 
                    l.nome AS lab_nome, 
                    u.nome AS usuario_nome
                    FROM 
                        atribuicao a
                    LEFT JOIN 
                        atribuicao_turma at ON a.id = at.id_atribuicao
                    LEFT JOIN 
                        turma t ON at.id_turma = t.id
                    LEFT JOIN 
                        atribuicao_lab al ON a.id = al.id_atribuicao
                    LEFT JOIN 
                        lab l ON al.id_lab = l.id
                    LEFT JOIN 
                        atribuicao_usuario au ON a.id = au.id_atribuicao
                    LEFT JOIN 
                        usuario u ON au.id_professor = u.id
                    ORDER BY 
                        a.id";


            
            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->execute();

            $atribuicoes = $stmt->fetchAll(PDO::FETCH_ASSOC);

            unset($stmt);
            unset($db);

            return $atribuicoes;
        } catch (PDOException $e) {
            return "Erro ao listar as atribuições " . $e->getMessage();
        }
    }

    //Buscar atribuição
    public function buscarAtribuicao($id)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar a atribuição
            $sql = "SELECT * FROM atribuicao WHERE id = :id";
            
            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);
            $stmt->execute();

            $atribuicao = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $atribuicao;
        } catch (PDOException $e) {
            return "Erro ao buscar a atribuição " . $e->getMessage();
        }
    }

    //Editar atribuição
    public function update(Atribuicao $atribuicao)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para editar a atribuição
            $sql = "UPDATE atribuicao SET ano = :ano, qntd_aulas = :qntd_aulas, qntd_laboratorios = :qntd_laboratorios, sd_descricao = :sd_descricao, id_disciplina = :id_disciplina WHERE id = :id";
            $sql2 = "UPDATE atribuicao_turma SET id_turma = :id_turma WHERE id_atribuicao = :id";
            $sql3 = "UPDATE atribuicao_lab SET id_lab = :id_lab WHERE id_atribuicao = :id";
            $sql4 = "UPDATE atribuicao_usuario SET id_professor = :id_professor WHERE id_atribuicao = :id";

            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':ano', $atribuicao->getAno());
            $stmt->bindParam(':qntd_aulas', $atribuicao->getQntdAulas());
            $stmt->bindParam(':qntd_laboratorios', $atribuicao->getQntdLaboratorios());
            $stmt->bindParam(':sd_descricao', $atribuicao->getSdDescricao());
            $stmt->bindParam(':id_disciplina', $atribuicao->getIdDisciplina());
            $stmt->bindParam(':id', $atribuicao->getId());
            $stmt->execute();

            $stmt = $conn->conecta()->prepare($sql2);
            $stmt->bindParam(':id_turma', $atribuicao->getIdTurma());
            $stmt->bindParam(':id', $atribuicao->getId());
            $stmt->execute();

            $stmt = $conn->conecta()->prepare($sql3);
            $stmt->bindParam(':id_lab', $atribuicao->getIdLab());
            $stmt->bindParam(':id', $atribuicao->getId());
            $stmt->execute();

            $stmt = $conn->conecta()->prepare($sql4);
            $stmt->bindParam(':id_professor', $atribuicao->getIdProfessor());
            $stmt->bindParam(':id', $atribuicao->getId());
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao editar a atribuição " . $e->getMessage();
        }
    }

    //Excluir atribuição
    public function delete($id)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para excluir a atribuição
            $sql = "DELETE FROM atribuicao WHERE id = :id";
            
            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao excluir a atribuição " . $e->getMessage();
        }
    }
}
