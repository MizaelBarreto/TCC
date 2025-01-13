<?php

namespace app\Conexao;

require __DIR__ . '/../../vendor/autoload.php';

use PDO;
use PDOException;

/*Utilizando a biblioteca Dotenv: https://github.com/vlucas/phpdotenv*/

$dotenvPath = __DIR__ . '/../..';
$dotenv = \Dotenv\Dotenv::createImmutable($dotenvPath);
$dotenv->load();

//Classe para conexão com o banco de dados
class ConexaoDB
{
    /**
     * Establishes a connection to the database.
     *
     * @return PDO|string Returns a PDO instance on success or an error message on failure.
     */
    public static function conecta()
    {
        try {
            //Instanciando a classe PDO
            $varConn = new PDO(
                $_ENV['DB_CONNECTION'] . ":host=" . $_ENV['DB_HOST'] . ";dbname=" . $_ENV['DB_NAME'],
                $_ENV['DB_USERNAME'],
                $_ENV['DB_PASSWORD']
            );

            //Configurar o PDO para lançar exceções em caso de erro
            $varConn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            //Retornando a conexão
            return $varConn;
        } catch (PDOException $e) {
            // Log the error message
            error_log($e->getMessage());

            // Retornando uma mensagem genérica
            return 'Error no Banco de Dados';
        }
    }
}