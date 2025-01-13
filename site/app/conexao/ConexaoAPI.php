<?php

namespace app\Conexao;

require_once __DIR__ . '/../../vendor/autoload.php';

/*Utilizando a bibilioteca Guzzle: https://github.com/guzzle/guzzle*/

use GuzzleHttp\Client;
use GuzzleHttp\Exception\RequestException;

//Classe para conexão com a API
class ConexaoAPI
{
    //Método GET
    public function get()
    {
        //Instanciando a classe Client
        $client = new Client();

        try {
            //Requisição GET para a API
            $res = $client->request('GET', 'http://localhost:8000/');

           //Retornando a resposta
            return $res;
        } catch (RequestException $e) {
            //Retornando o erro
            return $e->getResponse();
        }
    }
}