<?php

namespace app\DAO;

require_once __DIR__ . '/../dto/Disponibilidade.php';
require_once __DIR__ . '/../conexao/ConexaoDB.php';

use \PDOException;
use \PDO;

use app\Conexao\ConexaoDB;
use app\DTO\Disponibilidade;

class DisponibilidadeDAO
{
    //Criar disciplina
    public function create(Disponibilidade $disponibilidade)
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Inserção de dados
            $sql = "INSERT INTO disponibilidade (id_usuario, id_horario) VALUES (:id_usuario, :id_horario)";

            //Preparar query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id_usuario', $disponibilidade->getIdUsuario());
            $stmt->bindParam(':id_horario', $disponibilidade->getIdHorario());
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao criar disponibilidade " . $e->getMessage();
        }
    }

    //Ler todas as disponibilidades
    public function read()
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Selecionar todos os dados
            $sql = "SELECT * FROM disponibilidade ORDER BY id";

            //Preparar e executar query
            $stmt = $db->prepare($sql);

            $stmt->execute();

            $disponibilidades = $stmt->fetchAll(PDO::FETCH_ASSOC);

            unset($stmt);
            unset($db);

            return $disponibilidades;
        } catch (PDOException $e) {
            return "Erro ao buscar disponibilidades " . $e->getMessage();
        }
    }

    //Buscar disponibilidade por id
    public function buscarDisponibilidade($id)
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Selecionar disponibilidade por id
            $sql = "
                    SELECT * 
                    FROM disponibilidade
                    WHERE id = :id
                ";

            //Preparar e executar query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);

            $stmt->execute();

            $disponibilidade = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $disponibilidade;
        } catch (PDOException $e) {
            return "Erro ao buscar disponibilidade " . $e->getMessage();
        }
    }

    //Verificar disponibilidade de professores
    public function verificarDisponibilidadeProfessores()
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Selecionar professores que não possuem disponibilidade
            $sql = "
                   SELECT 
                        u.id, u.nome 
                    FROM 
                        usuario u 
                    WHERE 
                        u.prof = true 
                    AND NOT EXISTS (
                        SELECT 1 
                        FROM disponibilidade d 
                        WHERE d.id_professor = u.id
                    )
                ";

            //Preparar e executar query
            $stmt = $db->prepare($sql);

            $stmt->execute();

            $disponibilidade = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $disponibilidade;
        } catch (PDOException $e) {
            return "Erro ao verificar disponibilidade de professores " . $e->getMessage();
        }
    }

    //Atualizar disponibilidade
    public function update(Disponibilidade $disponibilidade)
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Atualizar disponibilidade
            $sql = "
                    UPDATE disponibilidade
                    SET id_usuario = :id_usuario, id_horario = :id_horario
                    WHERE id = :id
                ";

            //Preparar e executar query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id_usuario', $disponibilidade->getIdUsuario());
            $stmt->bindParam(':id_horario', $disponibilidade->getIdHorario());
            $stmt->bindParam(':id', $disponibilidade->getId());

            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao atualizar disponibilidade " . $e->getMessage();
        }
    }

    //Buscar disponibilidade por id do usuário
    public function buscarDisponibilidadePorUsuario($id_usuario)
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Selecionar disponibilidade por id do usuário
            $sql = "
                    SELECT * 
                    FROM disponibilidade
                    WHERE id_usuario = :id_usuario
                ";

            //Preparar e executar query
            $stmt = $db->prepare($sql);
            $stmt->bindParam(':id_usuario', $id_usuario);

            $stmt->execute();

            $disponibilidade = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $disponibilidade;
        } catch (PDOException $e) {
            return "Erro ao buscar disponibilidade por usuário " . $e->getMessage();
        }
    }

    //Buscar disponibilidade por id do horário
    public function buscarDisponibilidadePorHorario($id_horario)
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Selecionar disponibilidade por id do horário
            $sql = "
                    SELECT * 
                    FROM disponibilidade
                    WHERE id_horario = :id_horario
                ";

            //Preparar e executar query
            $stmt = $db->prepare($sql);
            $stmt->bindParam(':id_horario', $id_horario);

            $stmt->execute();

            $disponibilidade = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $disponibilidade;
        } catch (PDOException $e) {
            return "Erro ao buscar disponibilidade por horário " . $e->getMessage();
        }
    }

    //Buscar disponibilidade por id do usuário e id do horário
    public function buscarDisponibilidadePorUsuarioHorario($id_usuario, $id_horario)
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Selecionar disponibilidade por id do usuário e id do horário
            $sql = "
                    SELECT * 
                    FROM disponibilidade
                    WHERE id_usuario = :id_usuario AND id_horario = :id_horario
                ";

            //Preparar e executar query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id_usuario', $id_usuario);
            $stmt->bindParam(':id_horario', $id_horario);
            $stmt->execute();

            $disponibilidade = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $disponibilidade;
        } catch (PDOException $e) {
            return "Erro ao buscar disponibilidade por usuário e horário " . $e->getMessage();
        }
    }

    //Deletar disponibilidade
    public function delete($id)
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Deletar disponibilidade
            $sql = "
                    DELETE FROM disponibilidade
                    WHERE id = :id
                ";

            //Preparar e executar query
            $stmt = $db->prepare($sql);
            $stmt->bindParam(':id', $id);

            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao deletar disponibilidade " . $e->getMessage();
        }
    }

    //Deletar disponibilidade por id do usuário
    public function deletarDisponibilidadePorUsuario($id_usuario)
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Deletar disponibilidade por id do usuário
            $sql = "
                    DELETE FROM disponibilidade
                    WHERE id_usuario = :id_usuario
                ";

            //Preparar e executar query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id_usuario', $id_usuario);
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao deletar disponibilidade por usuário " . $e->getMessage();
        }
    }

    //Deletar disponibilidade por id do horário
    public function deletarDisponibilidadePorHorario($id_horario)
    {
        try {
            //Conexão com o banco
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Deletar disponibilidade por id do horário
            $sql = "
                    DELETE FROM disponibilidade
                    WHERE id_horario = :id_horario
                ";

            //Preparar e executar query
            $stmt = $db->prepare($sql);
            $stmt->bindParam(':id_horario', $id_horario);

            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao deletar disponibilidade por horário " . $e->getMessage();
        }
    }
}
