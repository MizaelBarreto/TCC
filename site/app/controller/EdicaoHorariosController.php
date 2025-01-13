<?php

namespace app\Controller;

require_once __DIR__ . '/../conexao/ConexaoDB.php';

use app\Conexao\ConexaoDB;

class EdicaoHorariosController
{
    public function index()
    {
        session_start();

        //Verifica se o usuário está logado e se ele é um administrador
        if (!isset($_SESSION['adm'])) {
            header("Location: /projetoscti26/forbidden");
            exit();
        }

        require_once __DIR__ . '/../view/EdicaoHorarios.php';
        exit();
    }

    public function transformarJson()
    {
        // Conexão com o banco de dados
        $conn = new ConexaoDB();

        // Json recebido do JS de TelaDaniela.html
        $jsonFile = $_POST['JsonData'];
        $data = json_decode($jsonFile, true);

        // Seleciona os dados de id e nome da tabela usuario
        $stmt = $conn->conecta()->prepare("SELECT id, nome FROM usuario");
        $stmt->execute();

        // Cria um array de mapeamento de IDs para nomes
        $idToNameMap = [];
        while ($row = $stmt->fetch()) {
            $idToNameMap[$row['id']] = $row['nome'];
        }

        // Substitui os IDs pelos nomes no array
        $this->replaceIdsWithNames($data, $idToNameMap);

        // Exibe o JSON modificado
        echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);

        exit();
    }

    /**
     * Recursively replaces IDs with names in the given array using the provided mapping.
     *
     * @param array $array The array in which to replace IDs with names.
     * @param array $idToNameMap The mapping of IDs to names.
     */
    private function replaceIdsWithNames(&$array, $idToNameMap)
    {
        if (!is_array($array)) {
            return;
        }
        foreach ($array as &$value) {
            if (is_array($value)) {
                $this->replaceIdsWithNames($value, $idToNameMap);
            } else {
                if (isset($idToNameMap[$value])) {
                    $value = $idToNameMap[$value];
                }
            }
        }
    }
}
