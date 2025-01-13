
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/x-icon" href="public/imagens/HAYDAMico.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrador</title>
    <link rel="stylesheet" href="app/css/EdicaoHorarios.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.20/jspdf.plugin.autotable.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <!-- menegazzo notas: adicionar o pesquisa de ID, reduzir sensitividade mouse, consertar redirecionamento, adicionar nomes matérias-->
</head>
<body>
    <header>
        <div class="header-left">
            <h1>Administrador</h1>
            <a href="/projetoscti26/logout" class="log-off-button">Log Off</a>
          </div>
        <div class="header-controls">
            <div class="dropdown">
                <button class="dropbtn">Download</button>
                <div class="dropdown-content">
                    <a href="#" id="downloadJSONButton" class="action-button">Download de JSON</a>
                    <a href="#" id="downloadTurmasPDF">Turmas PDF ZIP</a>
                    <a href="#" id="downloadTeachersPDF">Professor PDF ZIP</a>
                    <input type="text" id="teacherInput" placeholder="ID do professor">
                    <button onclick="handleDownload()">Baixar PDF do Professor</button>    
                </div>
            </div>
            <select id="viewSelector">
                <option value="dia">Visualização Dia</option>
                <option value="noite">Visualização Noite</option>
                <option value="full-view">Visualização Completa</option>
                <option value="tower-view">Visualização Torre</option>
            </select>
            <input type="file" id="jsonFileInput" accept=".json" style="display: none;">
            <button id="uploadJSONButton" class="upload-json-button">Carregar JSON</button>
        </div>
    </header>
    <div class="main-container">
        <div class="side-container">
            <div class="side-container-header">
                <div class="carousel-buttons">
                    <button class="carousel-button carousel-button-left">◀</button>
                    <button class="carousel-button carousel-button-right">▶</button>
                </div>
                <button id="scrollLockToggle" class="scroll-lock-toggle">🔓</button>
            </div>
            <div class="side-container-content">
                <!-- Existing side container content -->
            </div>
        </div>
        <div class="container">
            <div class="tab-content active" id="dia-tab">
                <div class="carousel-container">
                    <div class="carousel-track"></div>
                </div>
            </div>
            <div class="tab-content" id="noite-tab">
                <div class="carousel-container">
                    <div class="carousel-track"></div>
                </div>
            </div>
            <div class="tab-content" id="full-view-tab">
                <div class="carousel-container">
                    <div class="carousel-track"></div>
                </div>
            </div>
            <div class="tab-content" id="tower-view-tab">
                <div class="carousel-container">
                    <div class="carousel-track"></div>
                </div>
            </div>
        </div>
    </div>
    <script src = "app/js/EdicaoHorarios.js"></script>
</body>
</html>
