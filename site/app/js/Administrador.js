// script.js

// Desabilitar o botão de "Gerar Horários" se houver professores sem disponibilidade
const disponibilidade = document.getElementById('gerarhorarios').textContent;
if (disponibilidade) {
    var gerarHorariosCard = document.getElementById('gerarHorariosCard');
    gerarHorariosCard.classList.add('disabled');
}