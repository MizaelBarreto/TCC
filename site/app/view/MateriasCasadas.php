<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CorrelaÃ§Ã£o de MatÃ©rias</title>
    <link rel="stylesheet" href="app/css/MateriasCasadas.css"> <!-- Link para o CSS externo -->
</head>
<body>

<div id="container">
    <!-- Select box do curso -->
    <select id="cursos">
        <option value="eletronica">EletrÃ´nica</option>
        <option value="mecanica">MecÃ¢nica</option>
        <option value="informatica">InformÃ¡tica</option>
        <option value="ensino_medio">Ensino MÃ©dio</option>
    </select>

    <!-- Colunas de matÃ©rias e slots -->
    <div id="content">
        <div id="materias-container">
            <h2>MatÃ©rias</h2>
           
        </div>

        <div id="slot-container">
            <h2>Slots para Casamento</h2>
            
        </div>
    </div>

    <!-- BotÃµes de salvar e desfazer -->
    <div id="button-container">
        <div id="save-container">
            <button id="save">Salvar Casamentos</button>
        </div>
        <div id="undo-container">
            <button id="undo">Desfazer Ãšltimo Casamento</button>
        </div>
    </div>
</div>

<script src="../JS/testeMateriasCasadas.js"></script> 
</body>
</html>
