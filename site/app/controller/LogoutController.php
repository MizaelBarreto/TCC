<?php

namespace app\Controller;

require_once __DIR__ . '/../Funcoes.php';

class LogoutController
{
   //Função para deslogar do sistema
   public function deslogar()
   {
      session_start();

      //Verifica se a sessão está vazia
      if (!$_SESSION) {
         header("Location: /projetoscti26/login");
         exit();
      }

      //Função para destruir o cookie e a sessão
      destroiCookieSessao();

      session_unset();

      //Redireciona para a página de login
      header("Location: /projetoscti26/login");
      exit();
   }
}
