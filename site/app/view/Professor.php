<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Início</title>
    <link rel="stylesheet" href="app/css/ProfTelaInicial.css">
    <link rel="icon" type="image/x-icon" href="public/imagens/HAYDAMico.ico">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <div class="header-content">
            <div class="header-left">
                <h1>Início</h1>
                <a href="/projetoscti26/logout" class="log-off-button">Log Off</a>
            </div>
        </div>
    </header>
    <div class="container">
        <main>
            <div class="grid">
                <div class="card" onclick="window.location.href='/projetoscti26/selecionarhorarios'">
                    <img src="public/imagens/gerar.png" alt="Selecionar Horários" class="card-icon">
                    <h2>Enviar dados de indisponibilidade</h2>
                </div>
                <div class="card" onclick="window.location.href='/projetoscti26/horarios'">
                    <img src="public/imagens/prancheta.png" alt="Verificar Horários" class="card-icon">
                    <h2>Verificar Horários</h2>
                </div>
            </div>
        </main>
        <footer>
            
        </footer>
    </div>
</body>
</html>