<?php

namespace app\DAO;

require_once __DIR__ . '/../dto/Disciplina.php';
require_once __DIR__ . '/../conexao/ConexaoDB.php';

use \PDOException;
use \PDO;

use app\Conexao\ConexaoDB;
use app\DTO\Disciplina;


class DisciplinaDAO
{
    //Criar disciplina
    public function create(Disciplina $disciplina)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para inserir a disciplina
            $sql = "INSERT INTO disciplina (nome) VALUES (:nome)";
            
            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $nome = $disciplina->getNome();

            $stmt->bindParam(':nome', $nome);

            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao salvar a disciplina " . $e->getMessage();
        }
    }

    //Listar disciplinas
    public function read()
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para listar as disciplinas
            $sql = "SELECT * FROM disciplina ORDER BY id";

            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->execute();

            $disciplinas = $stmt->fetchAll(PDO::FETCH_ASSOC);

            unset($stmt);
            unset($db);

            return $disciplinas;
        } catch (PDOException $e) {
            return "Erro ao listar as disciplinas " . $e->getMessage();
        }
    }

    //Buscar disciplina
    public function buscarDisciplina($id)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar a disciplina
            $sql = "SELECT * FROM disciplina WHERE id = :id";
            
            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);
            $stmt->execute();

            $disciplina = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $disciplina;
        } catch (PDOException $e) {
            return "Erro ao buscar a disciplina " . $e->getMessage();
        }
    }

    //Editar disciplina
    public function update(Disciplina $disciplina)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para editar a disciplina
            $sql = "UPDATE disciplina SET nome = :nome WHERE id = :id";
            
            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':nome', $disciplina->getNome());
            $stmt->bindParam(':id', $disciplina->getId());

            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao editar a disciplina " . $e->getMessage();
        }
    }

    //Excluir disciplina
    public function delete($id)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para excluir a disciplina
            $sql = "DELETE FROM disciplina WHERE id = :id";
            
            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao excluir a disciplina " . $e->getMessage();
        }
    }
}
