<?php

namespace app\DAO;

require_once __DIR__ . '/../dto/AtribuicaoCasada.php';
require_once __DIR__ . '/../dao/AtribuicaoDAO.php';
require_once __DIR__ . '/../conexao/ConexaoDB.php';

use PDOException;
use PDO;

use app\Conexao\ConexaoDB;
use app\DTO\AtribuicaoCasada;
use app\DAO\AtribuicaoDAO;

class AtribuicaoCasadaDAO
{
    //Criar atribuição casada
    public function create(AtribuicaoCasada $atribuicaoCasada)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Verifica se a atribuição existe
            $atribuicaoDAO = new AtribuicaoDAO();
            if ($atribuicaoDAO->buscarAtribuicao($atribuicaoCasada->getAtribuicaoId()) == null) {
                return;
            }

            //Verifica se a atribuição casada existe
            if ($atribuicaoCasada->getAtribuicaoCasadaId() == null || AtribuicaoCasadaDAO::buscarAtribuicaoCasada($atribuicaoCasada->getAtribuicaoCasadaId()) == null) {
                //Query para inserir a atribuição casada
                $sql1 = "INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (qntd_aulas_casada)";
                $sql2 = "INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (:id_atribuicao, :id_atribuicaoCasada)";

                //Prepara e executa a query
                $stmt = $db->prepare($sql1);
                $stmt->bindParam(':qntd_aulas_casada', $atribuicaoCasada->getQntdAulasCasada());
                $stmt->execute();

                unset($stmt);

                //Pega o id da atribuição casada
                $atribuicaoCasadaId = $db->lastInsertId('id_atribuicao');

                //Prepara e executa a query
                $stmt = $conn->conecta()->prepare($sql2);
                $stmt->bindParam(':id_atribuicao', $atribuicaoCasada->getAtribuicaoId());
                $stmt->bindParam(':id_atribuicaoCasada', $atribuicaoCasadaId);
                $stmt->execute();

                unset($stmt);
                unset($db);
            } else {
                //Query para inserir a atribuição casada
                $sql2 = "INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (:id_atribuicao, :id_atribuicaoCasada)";

                //Prepara e executa a query
                $stmt = $db->prepare($sql2);
                $stmt->bindParam(':id_atribuicao', $atribuicaoCasada->getAtribuicaoId());
                $stmt->bindParam(':id_atribuicaoCasada', $atribuicaoCasada->getAtribuicaoCasadaId());

                $stmt->execute();

                unset($stmt);
                unset($db);
            }
        } catch (PDOException $e) {
            return "Erro ao salvar a atribuição casada " . $e->getMessage();
        }
    }

    //Listar atribuições casadas
    public function read()
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para listar as atribuições casadas
            $sql = "
                SELECT 
                    ac.id, 
                    ac.qntd_aulas_casada, 
                    NULL AS id_atribuicao, 
                    NULL AS id_atribuicaoCasada, 
                    d.nome AS disciplina_nome
                FROM 
                    atribuicaoCasada ac
                JOIN 
                    atribuicao a ON ac.id = a.id
                JOIN 
                    disciplina d ON a.id_disciplina = d.id
                UNION
                SELECT 
                    aac.id, 
                    ac.qntd_aulas_casada, 
                    aac.id_atribuicao, 
                    aac.id_atribuicaoCasada, 
                    d.nome AS disciplina_nome
                FROM 
                    atribuicao_atribuicaoCasada aac
                JOIN 
                    atribuicao a ON aac.id_atribuicao = a.id
                JOIN 
                    disciplina d ON a.id_disciplina = d.id
                JOIN 
                    atribuicaoCasada ac ON aac.id_atribuicaoCasada = ac.id
                ORDER BY 
                    id
            ";

            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->execute();

            $atribuicoesCasadas = $stmt->fetchAll(PDO::FETCH_ASSOC);

            unset($stmt);
            unset($db);

            return $atribuicoesCasadas;
        } catch (PDOException $e) {
            return "Erro ao listar as atribuições casadas " . $e->getMessage();
        }
    }

    //Listar id das atribuições casadas
    public function readAtribuicaoCasada()
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para listar os ids das atribuições casadas
            $sql = "SELECT id FROM atribuicaoCasada ORDER BY id";
   
            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->execute();

            $id = $stmt->fetchAll(PDO::FETCH_ASSOC);

            unset($stmt);
            unset($db);

            return $id;
        } catch (PDOException $e) {
            return "Erro ao listar id das atribuições casadas " . $e->getMessage();
        }
    }

    //Buscar atribuição casada por id
    public function buscarAtribuicaoCasada($id)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para buscar a atribuição casada
            $sql = "
                    SELECT * 
                    FROM atribuicaoCasada
                    UNION
                    SELECT * 
                    FROM atribuicao_atribuicaoCasada
                    WHERE id = :id
            ";

            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);
            $stmt->execute();

            $atribuicaoCasada = $stmt->fetch();

            unset($stmt);
            unset($db);

            return $atribuicaoCasada;
        } catch (PDOException $e) {
            return "Erro ao buscar a atribuição casada " . $e->getMessage();
        }
    }

    // Editar atribuição casada
    public function update(AtribuicaoCasada $atribuicaoCasada)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para editar a atribuição casada
            $qntd_aulas_casada = $atribuicaoCasada->getQntdAulasCasada();
            $id_atribuicao = $atribuicaoCasada->getAtribuicaoId();
            $id_atribuicaoCasada = $atribuicaoCasada->getId();

            $sql1 = "
                    UPDATE atribuicaoCasada
                    SET qntd_aulas_casada = :qntd_aulas_casada
                    WHERE id = :id
            ";
            $sql2 = "
                    UPDATE atribuicao_atribuicaoCasada
                    SET id_atribuicao = :id_atribuicao
                    SET id_atribuicaoCasada = :id_atribuicaoCasada
                    WHERE id = :id
            ";

            //Prepara e executa a query
            $stmt = $db->prepare($sql1);

            $stmt->bindParam(':qntd_aulas_casada', $qntd_aulas_casada);
            $stmt->bindParam(':id', $id_atribuicao);
            $stmt->execute();

            unset($stmt);

            //Prepara e executa a query
            $stmt = $db->prepare($sql2);

            $stmt->bindParam(':id_atribuicao', $id_atribuicaoCasada);
            $stmt->bindParam(':id_atribuicaoCasada', $id_atribuicao);
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao editar a atribuição casada " . $e->getMessage();
        }
    }

    public function delete($id)
    {
        try {
            //Conexão com o banco de dados
            $conn = new ConexaoDB();
            $db = $conn->conecta();

            //Query para excluir a atribuição casada
            $sql = "
                    DELETE FROM atribuicaoCasada
                    WHERE id = :id
            ";

            //Prepara e executa a query
            $stmt = $db->prepare($sql);

            $stmt->bindParam(':id', $id);
            $stmt->execute();

            unset($stmt);
            unset($db);
        } catch (PDOException $e) {
            return "Erro ao excluir a atribuição casada " . $e->getMessage();
        }
    }
}
