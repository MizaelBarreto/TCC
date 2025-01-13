<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dados</title>
    <link rel="icon" type="image/x-icon" href="public/imagens/HAYDAMico.ico">
    <link rel="stylesheet" href="app/css/Dados.css">
</head>
<body>
    <header>
    <div class="header-left">
            <h1>Inserir dados</h1>
            <a href="/projetoscti26/logout" class="log-off-button">Log Off</a>
          </div>
    </header>
    <main>
        <div class="buttons">
            <button id="btnAtribuicao">Form Atribuição</button>
            <button id="btnDisciplina">Form Disciplina</button>
            <button id="btnAtribuicaoCasada">Form Casadas</button>
            <button id="btnLab">Form Labs</button>
        </div>
        <div class="read-buttons">
            <button id="readAtribuicao">Visualizar Atribuição</button>
            <button id="readProfessor">Visualizar Professor</button>
            <button id="readDisciplina">Visualizar Disciplina</button>
            <button id="readAtribuicaoCasada">Visualizar Casadas</button>
            <button id="readLab">Visualizar Labs</button>
        </div>
        <div id="tableContainer"></div>
        <div id="formContainer"></div>
    </main>
    <div id="modal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <div id="modalForm"></div>
        </div>
    </div>
    <script src="app/js/Horarios.js"></script>
</body>
</html>