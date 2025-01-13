<?php

require_once __DIR__ . '/../../vendor/autoload.php';
require_once __DIR__ . '/../controller/AdministradorController.php';
require_once __DIR__ . '/../controller/ProfessorController.php';
require_once __DIR__ . '/../controller/EdicaoHorariosController.php';
require_once __DIR__ . '/../controller/CadastroController.php';
require_once __DIR__ . '/../controller/CodigoController.php';
require_once __DIR__ . '/../controller/DadosController.php';
require_once __DIR__ . '/../controller/EsqueciController.php';
require_once __DIR__ . '/../controller/HorariosController.php';
require_once __DIR__ . '/../controller/LoginController.php';
require_once __DIR__ . '/../controller/LogoutController.php';
require_once __DIR__ . '/../controller/MudaSenhaController.php';
require_once __DIR__ . '/../controller/SelecionarHorariosController.php';
require_once __DIR__ . '/../controller/PaginaController.php';

/*Utilizando a biblioteca: https://github.com/skipperbent/simple-php-router*/

use Pecee\SimpleRouter\SimpleRouter;
use Pecee\Http\Request;

use app\Controller\AdministradorController;
use app\Controller\ProfessorController;
use app\Controller\EdicaoHorariosController;
use app\Controller\CadastroController;
use app\Controller\CodigoController;
use app\Controller\DadosController;
use app\Controller\EsqueciController;
use app\Controller\HorariosController;
use app\Controller\LoginController;
use app\Controller\LogoutController;
use app\Controller\MudaSenhaController;
use app\Controller\SelecionarHorariosController;
use app\Controller\PaginaController;

//Definir o namespace padrão
SimpleRouter::setDefaultNamespace('app\Controller');

//Definir o prefixo padrão
SimpleRouter::group(['prefix' => '/projetoscti26'], function () {
    //Login
    SimpleRouter::get('/', [LoginController::class, 'index']); 
    SimpleRouter::get('/login', [LoginController::class, 'index']); 
    SimpleRouter::post('/login', [LoginController::class, 'logar']); 

    //Logout
    SimpleRouter::get('/logout', [LogoutController::class, 'deslogar']);

    //Cadastro
    SimpleRouter::get('/cadastro', [CadastroController::class, 'index']);
    SimpleRouter::post('/cadastro', [CadastroController::class, 'registrar']);

    //Esqueci
    SimpleRouter::get('/esqueci', [EsqueciController::class, 'index']);
    SimpleRouter::post('/esqueci', [EsqueciController::class, 'enviarCodigo']);

    //Código
    SimpleRouter::get('/codigo', [CodigoController::class, 'index']);
    SimpleRouter::post('/codigo', [CodigoController::class, 'verificarCodigo']);

    //Muda Senha
    SimpleRouter::get('/mudasenha', [MudaSenhaController::class, 'index']);
    SimpleRouter::post('/mudasenha', [MudaSenhaController::class, 'mudarSenha']);

    //Dados
    SimpleRouter::get('/dados', [DadosController::class, 'index']);
    SimpleRouter::post('/dados', [DadosController::class, 'dados']);

    //Horários
    SimpleRouter::get('/horarios', [HorariosController::class, 'index']);

    //Administrador
    SimpleRouter::get('/administrador', [AdministradorController::class, 'index']);
    SimpleRouter::get('/gerarhorarios', [AdministradorController::class, 'gerarHorarios']);

    //Edição de Horários
    SimpleRouter::get('/editarhorarios', [EdicaoHorariosController::class, 'index']);
    SimpleRouter::post('/editarhorarios', [EdicaoHorariosController::class, 'transformarJson']);

    //Selecionar Horários
    SimpleRouter::get('/selecionarhorarios', [SelecionarHorariosController::class, 'index']);
    SimpleRouter::post('/selecionarhorarios', [SelecionarHorariosController::class, 'salvarHorarios']);

    //Professor
    SimpleRouter::get('/professor',  [ProfessorController::class, 'index']);
    SimpleRouter::post('/professor', [ProfessorController::class, 'professor']);

    SimpleRouter::get('/not-found', [PaginaController::class, 'notFound']);
    SimpleRouter::get('/forbidden', [PaginaController::class, 'forbidden']);

    SimpleRouter::error(function(Request $request, \Exception $exception) {

        switch($exception->getCode()) {
            // Page not found
            case 404:
                response()->redirect('/not-found');
            // Forbidden
            case 403:
                response()->redirect('/forbidden');
        }
    });
});

// Iniciar o roteador
SimpleRouter::start();
