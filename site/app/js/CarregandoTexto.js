const linesContainer = document.querySelector('.lines-container');

let currentLine = 2;

function addLine() {
  const newLine = document.createElement('div');
  newLine.classList.add('line');
  newLine.innerHTML = `<span>Line ${currentLine}</span>`;
  linesContainer.prepend(newLine);

  // Remove the oldest line if there are more than 5 lines
  if (linesContainer.children.length > 5) {
    linesContainer.removeChild(linesContainer.children[linesContainer.children.length - 1]);
  }

  // Update the animation delay for each line
  Array.from(linesContainer.children).forEach((line, index) => {
    line.querySelector('span').style.animationDelay = `${index}s`;
  });
  currentLine++;
}

// Example usage:
setInterval(addLine, 5000);

//   ADICIONANDO MAIS CODIGO DO YURI
const contador = document.querySelector('.contador');
const progresso = document.querySelector('.progresso');

var conta = 4;
var progess = 4;

const loading = setInterval(load, 100);

function load() {
  if (conta == 100 && progess == 100) {
    clearInterval(loading);
  } else {
    conta += 1;
    progess += 1;

    contador.textContent = conta + '%';
    progresso.style.width = progess + '%';
  }
}