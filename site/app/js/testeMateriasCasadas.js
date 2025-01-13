// Estrutura de dados contendo os cursos e suas respectivas matérias e aulas
const cursosData = {
    eletronica: [
        { nome: "Circuitos", aulas: 2 },
        { nome: "Transistores", aulas: 2 },
        { nome: "Eletricidade", aulas: 2 },
        { nome: "Sinais", aulas: 2 }
    ],
    mecanica: [
        { nome: "Motores", aulas: 2 },
        { nome: "Termodinâmica", aulas: 2 },
        { nome: "Mecânica dos Fluidos", aulas: 2 },
        { nome: "Resistência dos Materiais", aulas: 2 }
    ],
    informatica: [
        { nome: "Programação", aulas: 2 },
        { nome: "Redes", aulas: 2 },
        { nome: "Banco de Dados", aulas: 2 },
        { nome: "Inteligência Artificial", aulas: 2 }
    ],
    ensino_medio: [
        { nome: "Matemática", aulas: 2 },
        { nome: "Física", aulas: 2 },
        { nome: "Química", aulas: 2 },
        { nome: "Biologia", aulas: 2 }
    ]
};

// Objeto para armazenar os casamentos feitos por curso
const historicoCasamentos = {
    eletronica: [],
    mecanica: [],
    informatica: [],
    ensino_medio: []
};

// Função para atualizar as matérias e slots dinamicamente
function atualizarMateriasECursos(curso) {
    const materiasContainer = document.getElementById('materias-container');
    const slotsContainer = document.getElementById('slot-container');

    // Limpar as matérias e slots atuais
    materiasContainer.innerHTML = '';
    slotsContainer.innerHTML = '';

    // Gerar novas matérias e slots para o curso selecionado
    cursosData[curso].forEach((materia, index) => {
        for (let i = 1; i <= materia.aulas; i++) {
            // Criar a matéria
            const materiaElement = document.createElement('div');
            materiaElement.className = 'materia';
            materiaElement.id = `materia${curso}-${index}-${i}`; // Identificador único por curso
            materiaElement.setAttribute('draggable', true);
            materiaElement.setAttribute('data-materia-type', materia.nome.toLowerCase());
            materiaElement.innerText = `${materia.nome} - Aula ${i}`;

            // Adicionar o evento de dragstart
            materiaElement.addEventListener('dragstart', (e) => {
                e.dataTransfer.setData('text/plain', e.target.id);
            });

            // Adicionar a matéria ao container de matérias
            materiasContainer.appendChild(materiaElement);

            // Criar o slot correspondente
            const slotElement = document.createElement('div');
            slotElement.className = 'materia-slot';
            slotElement.id = `slot${curso}-${index}-${i}`; // Identificador único por curso
            slotElement.setAttribute('data-slot-type', materia.nome.toLowerCase());
            slotElement.setAttribute('data-slot-info', `${materia.nome} - Aula ${i}`);

            // Adicionar o evento de dragover e drop
            slotElement.addEventListener('dragover', (e) => {
                e.preventDefault();
            });

            slotElement.addEventListener('drop', (e) => {
                const materiaId = e.dataTransfer.getData('text');
                const materiaElement = document.getElementById(materiaId);

                // Verifica se o slot corresponde à própria matéria
                if (slotElement.id === `slot${curso}-${materiaId.split('-')[1]}-${materiaId.split('-')[2]}`) {
                    alert("Você não pode colocar a matéria no próprio slot!");
                    return;
                }

                // Verifica se a matéria já está no slot correspondente a uma aula da mesma matéria
                const materiaType = materiaElement.dataset.materiaType;
                const slotType = slotElement.dataset.slotType;

                if (materiaType === slotType) {
                    alert("Não é permitido casar aulas da mesma matéria!");
                    return;
                }

                // Adiciona a matéria ao slot
                slotElement.appendChild(materiaElement);

                // Adiciona ao histórico do curso atual
                historicoCasamentos[curso].push({
                    slotId: slotElement.id,
                    materiaId: materiaElement.id
                });
            });

            // Adicionar o slot ao container de slots
            slotsContainer.appendChild(slotElement);
        }
    });

    // Recarregar os casamentos existentes no curso selecionado
    carregarCasamentos(curso);
}

// Função para carregar casamentos do curso selecionado
function carregarCasamentos(curso) {
    const cursoCasamentos = historicoCasamentos[curso];
    cursoCasamentos.forEach(({ slotId, materiaId }) => {
        const slot = document.getElementById(slotId);
        const materia = document.getElementById(materiaId);
        if (slot && materia) {
            slot.appendChild(materia);
        }
    });
}

// Função para desfazer o último casamento do curso selecionado
function desfazerCasamento() {
    const cursoAtual = document.getElementById('cursos').value;

    if (historicoCasamentos[cursoAtual].length > 0) {
        const ultimoCasamento = historicoCasamentos[cursoAtual].pop(); // Remove o último casamento
        const slot = document.getElementById(ultimoCasamento.slotId);
        const materia = document.getElementById(ultimoCasamento.materiaId);
        if (slot && materia) {
            slot.innerHTML = ''; // Remove a matéria do slot
            // Adicionar a matéria de volta ao container de matérias
            const materiasContainer = document.getElementById('materias-container');
            materiasContainer.appendChild(materia);
        }
    } else {
        alert("Não há casamentos para desfazer neste curso!");
    }
}

// Evento para mudar o curso
document.getElementById('cursos').addEventListener('change', (event) => {
    atualizarMateriasECursos(event.target.value);
});

// Adiciona o evento para o botão de desfazer
document.getElementById('undo').addEventListener('click', desfazerCasamento);

// Inicializar com o curso padrão
atualizarMateriasECursos(document.getElementById('cursos').value);
