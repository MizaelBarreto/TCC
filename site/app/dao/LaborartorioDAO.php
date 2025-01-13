<?php

namespace app\DAO;

require_once __DIR__ . '/../dto/Laboratorio.php';
require_once __DIR__ . '/../conexao/ConexaoDB.php';

use \PDOException;
use \PDO;

use app\Conexao\ConexaoDB;
use app\DTO\Laboratorio;

class LaboratorioDAO
{
    //Função para salvar um laboratório
    public function create(Laboratorio $laboratorio)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            $nome = $laboratorio->getNome();

            //Query para inserir um laboratório
            $sql = "INSERT INTO lab (nome) VALUES (:nome)";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':nome', $nome);

            $stmt->execute();

            unset($db);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao salvar o laboratório " . $e->getMessage();
        }
    }

    //Função para listar os laboratórios
    public function read()
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para listar os laboratórios
            $sql = "SELECT * FROM lab ORDER BY id";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->execute();

            $laboratorios = $stmt->fetchAll(PDO::FETCH_ASSOC);

            unset($stmt);
            unset($db);

            return $laboratorios;
        } catch (PDOException $e) {
            return "Erro ao listar os laboratórios " . $e->getMessage();
        }
    }

    //Função para buscar um laboratório
    public function buscarLaboratorio($id)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar um laboratório
            $sql = "
                    SELECT * 
                    FROM lab
                    WHERE id = :id
            ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);
            $stmt->execute();

            $laboratorio = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $laboratorio;
        } catch (PDOException $e) {
            return "Erro ao buscar o laboratório " . $e->getMessage();
        }
    }

    //Função para editar um laboratório
    public function update(Laboratorio $laboratorio)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para editar um laboratório
            $sql = "
                    UPDATE lab
                    SET nome = :nome
                    WHERE id = :id
            ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':nome', $laboratorio->getNome());
            $stmt->bindParam(':id', $laboratorio->getId());
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao editar o laboratório " . $e->getMessage();
        }
    }

    //Função para excluir um laboratório
    public function delete($id)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para excluir um laboratório
            $sql = "
                    DELETE FROM lab
                    WHERE id = :id
            ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao excluir o laboratório " . $e->getMessage();
        }
    }
}
