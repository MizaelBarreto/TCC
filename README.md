# MTO

Repositório do projeto My Time Organizator feito pela empresa Haydam como TCC no ano de 2024 do Colégio Técnico Industrial “Prof. Isaac Portal Roldán” - UNESP na cidade de Bauru, São Paulo, Brasil. 

<p align="center"><a href="https://projetoscti.com.br/projetoscti26/" target="_blank"><img src="/site/public/imagens/MTO.png" width="200" alt="MTO Logo"></a></p>

<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/Haydam/MTO?color=%2304D361">
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/Haydam/MTO">
  <a href="https://github.com/Haydam/MTO/commits/master">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/Haydam/MTO">
  </a>
  <a href="https://github.com/Haydam/MTO/stargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/Haydam/MTO?style=social">
  </a>
</p>

## Tabela de Conteúdo

<!--ts-->
   * [Sobre](#sobre)
   * [Status do Projeto](#status-do-projeto)
   * [Como usar](#como-usar)
      * [Pré-requisitos](#pré-requisitos)
         * [API](#api)
         * [Site](#site)
         * [Banco de Dados](#banco-de-dados)
   * [Tecnologias](#tecnologias)
   * [Equipe](#equipe)
   * [Banca e Orientadores](#banca-e-orientadores)
   * [Vulnerabilidades](#vulnerabilidades)
<!--te-->

## Sobre

Este projeto trata-se da criação de uma plataforma capaz de gerar horários para instituições de ensino de forma otimizada e eficiente.
Além de um aumento da agilidade da comunicação entre as partes constituintes da escola. Podendo ser usado de forma dinâmica por vários colégios sempre respeitando suas necessidades e restrições.
Para dinamizar a utilização da API (Application Programming Interface) foi escolhido o uso da linguagem Python, a qual é usada amplamente, está em constante atualização, facilitando sua manutenção e uso, e é compatível com a maioria dos softwares utilizados hoje em dia.

## Status do Projeto

Em fase de conclusão do seu primeiro time de desenvolvimento. 

## Como usar

### Pré-requisitos

#### API

1. **Python**
   - Instalar a versão 3.11.9 do Python.
   - Durante a instalação, selecionar a checkbox “Adicionar python.exe to PATH” e seguir as instruções até finalizar a instalação.
   - [Download Python 3.11.9](https://www.python.org/downloads/release/python-3119/)

2. **PIP**
   - **No Windows**: O pip vem junto com a instalação do Python. Verifique sua presença com o comando `pip --version`. Se necessário, instale com `python -m ensurepip --default-pip`.
   - **No MacOS**: Baixe o arquivo [get-pip.py](https://bootstrap.pypa.io/get-pip.py) e execute `python3 get-pip.py`. Verifique a instalação com `pip3 --version`.
   - [Instalação do pip no MacOS](https://www.geeksforgeeks.org/how-to-install-pip-in-macos/)

3. **Comandos Básicos do PIP**
   - `install`: Instala um novo pacote.
   - `uninstall`: Remove um pacote instalado.
   - `install --upgrade`: Atualiza um pacote instalado.
   - `list`: Lista todas as bibliotecas instaladas no Python.
   - `freeze`: Lista os pacotes instalados e cria um Requirements File.

4. **Spyder**
   - Instalar o Spyder e configurar o interpretador Python nas preferências.

5. **Ambiente Virtual**
   - Criar e/ou ativar o ambiente virtual na pasta onde estão os programas (diretório api).
   - Comandos:
     - Criar: `python -m venv .venv`
     - Ativar: `.venv\Scripts\activate` (Windows) ou `source .venv/bin/activate` (Linux/MacOS)

6. **Bibliotecas Python Requeridas**
   - `pandas`
   - `numpy`
   - `psycopg2`
   - `fastapi`
   - `uvicorn`

7. **FastAPI e Execução da API**
   - **No localhost**: Após ativar o ambiente virtual, execute `uvicorn api:app --reload`. A API estará disponível em `localhost:8000`.
   - **Em servidores remotos**: Configurações podem variar conforme o servidor. No caso da Kinghost, será necessário acesso ao painel de controle e suporte.

#### Site

1. **Xampp e PHP**
   - **No Windows**: Baixar e instalar a versão com PHP 8.2.12 do [Xampp](https://www.apachefriends.org/download.html).
   - **No MacOS**: Baixar e instalar a versão com PHP 8.2.12 do [Xampp](https://www.apachefriends.org/download.html).

2. **Configurações Recomendadas**
   - **Arquivo `php.ini`**: Descomentar a linha `extension=zip`.
   - **Arquivo `httpd.conf`**: Descomentar a linha `AllowOverride All`.

3. **Composer**
   - **No Windows**: Baixar e instalar o [Composer](https://getcomposer.org/).
   - **No MacOS**: Baixar o arquivo binário do Composer e configurar conforme as instruções.

4. **Comandos Básicos do Composer**
   - `init`: Inicia o Composer no diretório.
   - `require`: Adiciona uma nova dependência.
   - `install`: Instala as dependências do `composer.json`.
   - `update`: Atualiza as dependências.
   - `self-update`: Atualiza o Composer.
   - `dump-autoloader`: Atualiza o `autoload.php`.
   - `--version`: Mostra a versão do Composer.

5. **Bibliotecas PHP Requeridas**
   - `graham-campbell/result-type`
   - `guzzlehttp/guzzle`
   - `guzzlehttp/promises`
   - `guzzlehttp/psr7`
   - `pecee/simple-router`
   - `phpmailer/phpmailer`
   - `phpoption/phpoption`
   - `psr/http-client`
   - `psr/http-factory`
   - `psr/http-message`
   - `ralouphie/getallheaders`
   - `symfony/deprecation-contracts`
   - `symfony/polyfill-ctype`
   - `symfony/polyfill-mbstring`
   - `symfony/polyfill-php80`
   - `vlucas/phpdotenv`

6. **Estrutura e Configuração de Ambiente do Site**
   - Mover `.env.example`, `.htaccess` e `index.php` para o nível de `public`.
   - Preencher os campos de `.env` com as informações para conexão com o BD e SMTP.
   - No Xampp, todo o conteúdo deve estar em uma pasta com o nome de rota do grupo (ex: `projetoscti26`).

### Banco de Dados

1. **Script**
   - O script do banco está disponível no diretório bd na raiz do repositório. Execute-o para criar as estruturas de dados.

2. **Inserções**
   - Além do script, há documentos que carregam os dados do banco antes de ser limpo. Mantenha esses dados atualizados conforme necessário.

## Tecnologias

As seguintes ferramentas foram usadas na construção do projeto:

### **API** ([Python](https://www.python.org/))

- **[FastAPI](https://fastapi.tiangolo.com/)**
- **[Pandas](https://pandas.pydata.org/)**
- **[NumPy](https://numpy.org/)**
- **[Psycopg2](https://www.psycopg.org/)**
- **[Uvicorn](https://www.uvicorn.org/)**

### **Site** ([PHP](https://www.php.net/))

- **[Composer](https://getcomposer.org/)**
- **[Guzzle](https://github.com/guzzle/guzzle)**
- **[Simple Router](https://github.com/skipperbent/simple-php-router)**
- **[PHPMailer](https://github.com/PHPMailer/PHPMailer)**
- **[PHP dotenv](https://github.com/vlucas/phpdotenv)**

### **Banco de Dados** ([PostgreSQL](https://www.postgresql.org/))

- **[pgAdmin](https://www.pgadmin.org/)**
- **[phpPgAdmin](https://phppgadmin.sourceforge.io/)**

### **Ferramentas de Desenvolvimento**

- **[Visual Studio Code](https://code.visualstudio.com/)**
  - Extensões:
    - **[GitHub Repositories](https://marketplace.visualstudio.com/items?itemName=GitHub.remotehub)**
    - **[Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv)**
    - **[Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)**
    - **[PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)**
    - **[GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)**
    - **[GitHub Copilot Chat](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot-chat)**

### **Outras Ferramentas**

- **[Git](https://git-scm.com/)**
- **[Xampp](https://www.apachefriends.org/index.html)**

Estas tecnologias foram escolhidas para garantir a eficiência, escalabilidade e facilidade de manutenção do projeto.

## Equipe

- **[Mizael Martins Barreto - PO](https://github.com/MizaelBarreto)**
- **[Arthur de Castro Dias - Líder Técnico](https://github.com/ArthDias06)**
- **[Daniel Giraldi França Gonsales - Líder UX-UI](https://github.com/MestreDeje)**
- **[Heitor Lima dos Santos Cunha - Desenvolvedor](https://github.com/ToiLima)**
- **[Gabriel Eugenio Menegazzo - Desenvolvedor](https://github.com/MenegazzoTheAwesome)**
- **[Yuri Ribeiro de Oliveira - Desenvolvedor](https://github.com/Amig00506)**
- **[Arthur Pupolin Magalhães - Desenvolvedor](https://github.com/ArthurPMagalhaes)**

## Banca e Orientadores

O projeto foi desenvolvido sobre a orientação e posteriormente apresentado para os nossos professores: 

- **[André Luiz Ribeiro Bicudo - Coordenador do curso de Informática](https://github.com/albicudo)**
- **[Rafael Junqueira Martarelli - Orientador](https://github.com/RafaelJMUnesp)**
- **[Jovita M Hojas Baenas]()**
- **[Marcelo Cabello Peres](https://github.com/marceloperescti)**
- **[Débora Aires]()**
- **[Vitor Assis Camargo](https://github.com/vcamargo-unesp)**

## Vulnerabilidades

No caso de descoberta de vulnerabilidade, por favor contatar algum dos membros da equipe ou orientador.