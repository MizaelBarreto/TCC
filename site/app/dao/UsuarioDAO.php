<?php

namespace app\DAO;

require_once __DIR__ . '/../dto/Usuario.php';
require_once __DIR__ . '/../conexao/ConexaoDB.php';

use \PDOException;
use \PDO;

use app\Conexao\ConexaoDB;
use app\DTO\Usuario;

class UsuarioDAO
{
    //Função para salvar um usuário
    public function create(Usuario $usuario)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para inserir um usuário
            $sql = "INSERT INTO usuario (nome, email, senha, adm, prof) VALUES (:nome, :email, :senha, :adm, :prof)";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $nome = $usuario->getNome();
            $email = $usuario->getEmail();
            $senha = $usuario->getSenha();
            $adm = $usuario->getAdm() ? 'true' : 'false';
            $prof = $usuario->getProf() ? 'true' : 'false';

            $stmt->bindParam(':nome', $nome);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':senha', $senha);
            $stmt->bindParam(':adm', $adm);
            $stmt->bindParam(':prof', $prof);
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao salvar o usuário " . $e->getMessage();
        }
    }

    //Função para listar os usuários
    public function read()
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para listar os usuários
            $sql = "SELECT * FROM usuario WHERE prof = true ORDER BY id";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->execute();

            $usuarios = $stmt->fetchAll(PDO::FETCH_ASSOC);

            unset($stmt);
            unset($db);

            return $usuarios;
        } catch (PDOException $e) {
            return "Erro ao listar os usuários " . $e->getMessage();
        }
    }

    //Função para buscar um usuário
    public function buscarUsuario($id)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar um usuário
            $sql = "
                    SELECT * 
                    FROM usuario
                    WHERE id = :id
                ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);
            $stmt->execute();

            $usuario = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $usuario;
        } catch (PDOException $e) {
            return "Erro ao buscar o usuário " . $e->getMessage();
        }
    }

    //Função para buscar um usuário por nome
    public function buscarUsuarioPorNome($nome)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar um usuário
            $sql = "
                    SELECT * 
                    FROM usuario
                    WHERE nome = :nome
                ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':nome', $nome);
            $stmt->execute();

            $usuario = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $usuario;
        } catch (PDOException $e) {
            return "Erro ao buscar o usuário " . $e->getMessage();
        }
    }

    //Função para buscar um usuário por email
    public function buscarUsuarioPorEmail($email)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar um usuário
            $sql = "
                    SELECT * 
                    FROM usuario
                    WHERE email = :email
                ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':email', $email);
            $stmt->execute();

            $usuario = $stmt->fetch();

            unset($stmt);
            unset($db);

            if ($usuario) {
                return true;
            } else {
                return false;
            }
        } catch (PDOException $e) {
            return "Erro ao buscar o usuário " . $e->getMessage();
        }
    }

    //Função para buscar um usuário por email e retornar o nome
    public function buscarUsuarioPorEmailNome($email)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar um usuário
            $sql = "
                    SELECT * 
                    FROM usuario
                    WHERE email = :email
                ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':email', $email);
            $stmt->execute();

            $usuario = $stmt->fetch();

            unset($stmt);
            unset($db);

            //Verifica se o usuário existe
            if ($usuario) {
                return $usuario['nome'];
            } else {
                return;
            }
        } catch (PDOException $e) {
            return "Erro ao buscar o usuário " . $e->getMessage();
        }
    }

    //Função para buscar um usuário por email e retornar o nome
    public function buscarUsuarioPorEmailId($email)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar um usuário
            $sql = "
                    SELECT * 
                    FROM usuario
                    WHERE email = :email
                ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':email', $email);
            $stmt->execute();

            $usuario = $stmt->fetch();

            unset($stmt);
            unset($db);

            //Verifica se o usuário existe
            if ($usuario) {
                return $usuario['id'];
            } else {
                return;
            }
        } catch (PDOException $e) {
            return "Erro ao buscar o usuário " . $e->getMessage();
        }
    }

    //Função para buscar um usuário por email e senha
    public function buscarUsuarioPorEmailSenha($email, $senha)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar um usuário
            $sql = "SELECT * FROM usuario WHERE email = :email";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':email', $email);
            $stmt->execute();

            //Verifica se o usuário existe
            if ($stmt->rowCount() > 0) {
                $row = $stmt->fetch(PDO::FETCH_ASSOC);
                if (password_verify($senha, $row['senha'])) {
                    return true;
                } else {
                    return false;
                }
            }
        } catch (PDOException $e) {
            return "Erro ao buscar o usuário " . $e->getMessage();
        }
    }

    //Função para verificar se o usuário é administrador
    public function verificarAdm($email)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar um usuário
            $sql = "
                    SELECT * 
                    FROM usuario
                    WHERE email = :email
                ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':email', $email);
            $stmt->execute();

            $usuario = $stmt->fetch();

            unset($stmt);
            unset($db);

            //Verifica se o usuário é administrador
            if ($usuario['adm']) {
                return true;
            } else {
                return false;
            }
        } catch (PDOException $e) {
            return "Erro ao buscar o usuário " . $e->getMessage();
        }
    }

    //Função para verificar se o usuário é professor
    public function update(Usuario $usuario)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para editar um usuário
            $id = $usuario->getId();
            $nome = $usuario->getNome();
            $email = $usuario->getEmail();
            $senha = $usuario->getSenha();
            $adm = $usuario->getAdm() ? 'true' : 'false';
            $prof = $usuario->getProf() ? 'true' : 'false';

            //Preparando e executando a query
            $sql = "
                    UPDATE usuario
                    SET nome = :nome, email = :email, senha = :senha, adm = :adm, prof = :prof
                    WHERE id = :id
                ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':nome', $nome);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':senha', $senha);
            $stmt->bindParam(':adm', $adm);
            $stmt->bindParam(':prof', $prof);
            $stmt->bindParam(':id', $id);
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao editar o usuário " . $e->getMessage();
        }
    }

    //Função para atualizar a senha do usuário
    public function atualizarSenha($email, $senha)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para atualizar a senha do usuário
            $sql = "
                    UPDATE usuario
                    SET senha = :senha
                    WHERE email = :email
                ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            //Preparando e executando a query
            $stmt->bindParam(':senha', $senha);
            $stmt->bindParam(':email', $email);
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao atualizar a senha " . $e->getMessage();
        }
    }

    //Função para excluir um usuário
    public function delete($id)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para excluir um usuário
            $sql = "
                    DELETE FROM usuario
                    WHERE id = :id
                ";

            //Preparando e executando a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);
            $stmt->execute();

            //Verifica se o usuário foi excluído
            if ($stmt->rowCount() > 0) {
                return "Usuário excluído com sucesso!";
            } else {
                return "Erro ao excluir o usuário!";
            }

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao excluir o usuário " . $e->getMessage();
        }
    }
}
