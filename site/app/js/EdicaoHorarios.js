// Loading the page
let selectedCell = null;
let selectedTable = null;
const jsonData = {
  "dias": ['Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
  "turmas": {
    "dia": ['INI1A', 'INI1B', 'INI2A', 'INI2B', 'INI3A', 'INI3B', 'MEI1', 'MEI2', 'MEI3', 'ELI1', 'ELI2', 'ELI3'],
    "noite": ['INF1', 'INF2', 'INF3', 'MEC1', 'MEC2', 'MEC3', 'ELE1', 'ELE2', 'ELE3']
  },
  "horarios": {
    "dia": Array.from({ length: 10 }, (_, i) => i + 1),
    "noite": Array.from({ length: 4 }, (_, i) => i + 1)
  },
  "turnos": ['Dia', 'Tarde', 'Noite']
};
const emptyJason = {
  "integral": [],
  "noturno": []
};
const viewState = {
  activeTab: 'dia',
  currentCarouselIndex: 0,
  towerCarouselIndex: 0,
  isFullView: false,
  isTowerView: false
};


let currentCarouselIndex = 0;
let activeTab = 'dia';
let scheduleData;
let isTowerView = false;
let isFullView = false;
let towerCarouselIndex = 0;
let isScrollLocked = false;
let scheduleHistory = [];
const MAX_HISTORY = 50; // Maximum number of history states to keep

document.addEventListener('DOMContentLoaded', async function () {
  await loadScheduleData();
  createTables();
  setupCarousel();
  setupPDFDownload();
  handleSideContainerVisibility();
  setupJSONUpload();
  window.addEventListener('resize', handleWindowResize);
  handleWindowResize();
  setupScrollock();
  handleViewChange();
  setupViewSelector();


  /* dicas*/
  const scrollLockToggle = document.getElementById('scrollLockToggle');
  const fullViewToggle = document.getElementById('fullViewToggle');
  const towerViewToggle = document.getElementById('towerViewToggle');
  const uploadJSONButton = document.getElementById('uploadJSONButton');

  addTooltip(uploadJSONButton, 'Upload do arquivo JSON ');

  // Add CSS styles for tooltips
  const style = document.createElement('style');
  style.textContent = `
    .tooltip {
      position: absolute;
      background-color: #333;
      color: #fff;
      padding: 5px 10px;
      border-radius: 4px;
      font-size: 14px;
      opacity: 0;
      visibility: hidden;
      transition: opacity 0.3s, visibility 0.3s;
      white-space: nowrap;
      z-index: 1000;
      top: 100%;
      left: 50%;
      transform: translateX(-50%);
      margin-top: 5px;
    }
    
    #scrollLockToggle, #fullViewToggle, #towerViewToggle, #uploadJSONButton {
      position: relative;
    }
  `;
  document.head.appendChild(style);
});
function createTooltip(text) {
  const tooltip = document.createElement('div');
  tooltip.className = 'tooltip';
  tooltip.textContent = text;
  return tooltip;
}

function addTooltip(element, text) {
  const tooltip = createTooltip(text);
  element.appendChild(tooltip);

  element.addEventListener('mouseenter', () => {
    tooltip.style.opacity = '1';
    tooltip.style.visibility = 'visible';
  });

  element.addEventListener('mouseleave', () => {
    tooltip.style.opacity = '0';
    tooltip.style.visibility = 'hidden';
  });
}
window.addEventListener('scroll', () => {
  requestAnimationFrame(updateCarouselPosition);
});

async function loadScheduleData() {
  try {
    scheduleData = emptyJason;
  } catch (error) {
    console.error('Error loading schedule data:', error);
    scheduleData = { integral: [], noturno: [] };
  }
}

function setupJSONUpload() {
  const uploadJSONButton = document.getElementById('uploadJSONButton');
  const jsonFileInput = document.getElementById('jsonFileInput');

  uploadJSONButton.addEventListener('click', () => {
    jsonFileInput.click();
  });

  jsonFileInput.addEventListener('change', (event) => {
    const file = event.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = (e) => {
        try {
          const newData = JSON.parse(e.target.result);
          scheduleData = newData;
          scheduleHistory = []; // Clear history when loading a new file
          currentViewState = { // Reset view state
            activeTab: 'dia',
            currentCarouselIndex: 0,
            towerCarouselIndex: 0
          };
          recreateTables();
          scheduleData = updateScheduleData();
          updateAllEmptyHours();
          updateTabVisibility();
          updateCarouselPosition();
          handleSideContainerVisibility();
          adjustCarouselSize();
          alert('JSON file uploaded and processed successfully.');
          const results = analyzeSchedule(scheduleData);
          displayAnalysisResults(results);
        } catch (error) {
          console.error('Error parsing JSON:', error);
          alert('Invalid JSON file. Please check your file.');
        }
      };
      reader.readAsText(file);
    }
    // Reset the file input to allow the same file to be uploaded again
    event.target.value = '';
  });
}


function setupJSONUpload() {
  const uploadJSONButton = document.getElementById('uploadJSONButton');
  const jsonFileInput = document.getElementById('jsonFileInput');

  if (!uploadJSONButton || !jsonFileInput) {
    console.error('Upload button or file input not found');
    return;
  }

  uploadJSONButton.addEventListener('click', () => {
    jsonFileInput.click();
  });

  jsonFileInput.addEventListener('change', (event) => {
    const file = event.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = (e) => {
        try {
          const jsonData = JSON.parse(e.target.result);

          const formData = new FormData();
          formData.append('JsonData', JSON.stringify(jsonData));

          fetch('/projetoscti26/editarhorarios', {
            method: 'POST',
            body: formData
          })
            .then(response => response.text())
            .then(responseText => {
              try {
                const translatedData = JSON.parse(responseText);
                scheduleData = translatedData;
                scheduleHistory = []; // Clear history when loading a new file
                updateViewState({ // Reset view state
                  activeTab: 'dia',
                  currentCarouselIndex: 0,
                  towerCarouselIndex: 0,
                  isFullView: false,
                  isTowerView: false
                });
                recreateTables();
                scheduleData = updateScheduleData();
                updateAllEmptyHours();
                updateTabVisibility();
                updateCarouselPosition();
                handleSideContainerVisibility();
                adjustCarouselSize();
                alert('JSON file uploaded and processed successfully.');
                const results = analyzeSchedule(scheduleData);
                displayAnalysisResults(results);
              } catch (error) {
                console.error('Error parsing PHP response:', error);
                console.error('PHP response:', responseText);
                alert('Error processing response from server. Please check the console for details.');
              }
            })
            .catch(error => {
              console.error('Error processing JSON:', error);
              alert('Error processing JSON. Please try again.');
            });
        } catch (error) {
          console.error('Error parsing uploaded JSON:', error);
          alert('Invalid JSON file. Please check your file and try again.');
        }
      };
      reader.onerror = (error) => {
        console.error('Error reading file:', error);
        alert('Error reading file. Please try again.');
      };
      reader.readAsText(file);
    }
    // Reset the file input to allow the same file to be uploaded again
    event.target.value = '';
  });
}
/*
function setupJSONDownload() {
  const downloadJSONButton = document.getElementById('downloadJSONButton');
  
  downloadJSONButton.addEventListener('click', () => {
    const jsonString = JSON.stringify(scheduleData, null, 2);
    const blob = new Blob([jsonString], { type: 'application/json' });
    const url = URL.createObjectURL(blob);
    
    const a = document.createElement('a');
    a.href = url;
    a.download = 'schedule_data.json';
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
    URL.revokeObjectURL(url);
  });
}*/

function recreateTables() {
  // Clear existing tables
  const carouselTracks = document.querySelectorAll('.carousel-track');
  carouselTracks.forEach(track => track.innerHTML = '');

  // Recreate tables
  createTables();

  // Reset carousel position
  currentCarouselIndex = 0;
  updateCarouselPosition();
  handleSideContainerVisibility();
  adjustCarouselSize();
}

// Table related / side container
function handleSideContainerVisibility() {
  const sideContainer = document.querySelector('.side-container');
  const container = document.querySelector('.container');
  const mainContainer = document.querySelector('.main-container');
  const sideContainerHeader = document.querySelector('.side-container-header');
  const sideContainerContent = document.querySelector('.side-container-content');
  const buttons = document.querySelector('.carousel-buttons');
  const isTableOverflow = isTableOverflowing();
  const isBottomView = window.innerWidth <= 1024;

  if ((isTableOverflow || isBottomView) && (!viewState.isTowerView || !viewState.isFullView)) {
    mainContainer.style.flexDirection = 'column';
    sideContainer.style.width = '100%';
    sideContainer.style.height = 'auto';
    sideContainer.style.minHeight = '200px';
    sideContainer.style.maxHeight = 'none';
    sideContainer.style.marginRight = '0';
    sideContainer.style.marginTop = '10px';
    sideContainer.style.order = '2';
    container.style.order = '1';
    sideContainer.style.padding = '0';
    sideContainer.style.flexDirection = 'row';
    sideContainerHeader.style.flexDirection = 'column';
    sideContainerHeader.style.width = 'min-content';
    sideContainerHeader.style.borderRadius = '8px 0 0 8px';
    sideContainerContent.style.flexGrow = '1';
    buttons.style.flexDirection = 'column';
    buttons.style.position = 'sticky';
    sideContainerContent.style.padding = '10px';
    sideContainerHeader.style.height = '100%';
  } else {
    mainContainer.style.flexDirection = 'row';
    sideContainer.style.width = '400px';
    sideContainer.style.height = 'calc(100vh - 40px)';
    sideContainer.style.minHeight = 'auto';
    sideContainer.style.maxHeight = 'calc(100vh - 100px)';
    sideContainer.style.marginRight = '0px';
    sideContainer.style.marginTop = '0';
    sideContainer.style.order = '1';
    sideContainer.style.flexDirection = 'column';
    container.style.order = '2';
    sideContainer.style.padding = '0';
    sideContainer.style.flexDirection = 'column';
    sideContainerHeader.style.width = '100%';
    sideContainerHeader.style.borderRadius = '8px 8px 0 0';
    sideContainerContent.style.padding = '10px';
    sideContainerHeader.style.flexDirection = 'row';
    sideContainerHeader.style.height = 'min-content';
    buttons.style.flexDirection = 'row';
  }
}


function isTableOverflowing() {
  const mainContainer = document.querySelector('.main-container');
  const carouselContainer = document.querySelector(`#${activeTab}-tab .carousel-container`);
  const table = carouselContainer.querySelector('.tabela-container');

  return table.offsetWidth > mainContainer.offsetWidth * 0.75;
}

function createTables() {
  createTableForTab('dia');
  createTableForTab('noite');
  createFullViewTable();
  createTowerViewTable();
}

function setupCarousel() {
  const leftButtons = document.querySelectorAll('.carousel-button-left');
  const rightButtons = document.querySelectorAll('.carousel-button-right');
  const carouselContainers = document.querySelectorAll('.carousel-container');

  leftButtons.forEach(button => {
    button.addEventListener('click', () => handleCarouselMove('left'));
  });

  rightButtons.forEach(button => {
    button.addEventListener('click', () => handleCarouselMove('right'));
  });

  carouselContainers.forEach(container => {
    container.addEventListener('wheel', (e) => {
      if (isScrollLocked) {
        // Allow vertical scrolling when locked
        if (Math.abs(e.deltaX) > Math.abs(e.deltaY)) {
          e.preventDefault();
        }
      } else {
        e.preventDefault();
        handleCarouselMove(e.deltaX > 0 || e.deltaY > 0 ? 'right' : 'left');
      }
    });
  });

  updateUI();
}
const fullViewToggle = document.getElementById('fullViewToggle');

function createTableForTab(tabName) {
  const carouselTrack = document.querySelector(`#${tabName}-tab .carousel-track`);
  const scheduleType = tabName === 'dia' ? 'integral' : 'noturno';

  if (!scheduleData || !scheduleData[scheduleType]) {
    console.error(`Data para ${scheduleType} falta ou é invalido`);
    return;
  }

  const dayAbbreviations = ['SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB'];

  jsonData.dias.forEach((dia, diaIndex) => {
    const table = document.createElement('table');
    table.className = 'tabela-container';

    let tableHTML = '<thead><tr>';
    tableHTML += `<th class="cell header numero sticky-header">${dia}</th>`;
    jsonData.turmas[tabName].forEach(turma => {
      tableHTML += `<th class="cell header turma-header sticky-header">${turma}</th>`;
    });
    tableHTML += '</tr></thead><tbody>';

    const rowCount = tabName === 'dia' ? 10 : 4;
    for (let i = 0; i < rowCount; i++) {
      tableHTML += '<tr>';
      tableHTML += `<td class="cell numero">${i + 1}</td>`;
      jsonData.turmas[tabName].forEach((turma, turmaIndex) => {
        let cellContent = '';
        let cellClass = 'cell';
        if (scheduleData[scheduleType][turmaIndex] &&
          scheduleData[scheduleType][turmaIndex][diaIndex * rowCount + i] !== undefined) {
          const cellValue = scheduleData[scheduleType][turmaIndex][diaIndex * rowCount + i];
          cellContent = cellValue === -1 ? '' : cellValue.toString();
        }
        const prefix = tabName === 'dia' ? 'I' : 'N';
        const dayAbbr = dayAbbreviations[diaIndex];
        const id = `${dayAbbr}${prefix}${turmaIndex.toString().padStart(3, '0')}-${i.toString().padStart(3, '0')}`;
        tableHTML += `<td class="${cellClass} ${i === rowCount - 1 ? 'separator' : ''}" id="${id}S">${cellContent}</td>`;
      });
      tableHTML += '</tr>';
    }


    tableHTML += '</tbody>';
    table.innerHTML = tableHTML;
    carouselTrack.appendChild(table);
  });

  const cells = carouselTrack.querySelectorAll('.cell:not(.header):not(.numero)');
  cells.forEach((cell) => {
    cell.addEventListener('click', handleCellClick);
    cell.addEventListener('contextmenu', handleContextMenu);
  });
}
function handleViewChange() {
  updateUI();
}
// Update the updateUI function
function updateUI() {
  // Update tab visibility
  document.getElementById('dia-tab').classList.toggle('active', viewState.activeTab === 'dia');
  document.getElementById('noite-tab').classList.toggle('active', viewState.activeTab === 'noite');
  document.getElementById('full-view-tab').classList.toggle('active', viewState.isFullView);
  document.getElementById('tower-view-tab').classList.toggle('active', viewState.isTowerView);

  // Update dropdown selection
  document.getElementById('viewSelector').value = viewState.activeTab;

  // Update carousel position
  if (viewState.activeTab === 'tower-view') {
    updateTowerCarouselPosition();
  } else {
    updateCarouselPosition();
  }

  handleSideContainerVisibility();
  adjustCarouselSize();
}

// Update the handleViewChange function
function handleViewChange() {
  updateUI();
}

function createFullViewTable() {
  const carouselTrack = document.querySelector('#full-view-tab .carousel-track');
  if (!carouselTrack) {
    console.error('Full view carousel track not found');
    return;
  }
  carouselTrack.innerHTML = ''; // Clear existing content

  const dayAbbreviations = ['SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB'];

  jsonData.dias.forEach((dia, diaIndex) => {
    const table = document.createElement('table');
    table.className = 'tabela-container';

    let tableHTML = '<thead><tr>';
    tableHTML += `<th class="cell header numero sticky-header">${dia}</th>`;
    [...jsonData.turmas.dia, ...jsonData.turmas.noite].forEach(turma => {
      tableHTML += `<th class="cell header turma-header sticky-header">${turma}</th>`;
    });
    tableHTML += '</tr></thead><tbody>';

    const rowCount = 14; // 10 for dia + 4 for noite
    for (let i = 0; i < rowCount; i++) {
      tableHTML += '<tr>';
      tableHTML += `<td class="cell numero">${i + 1}</td>`;
      [...jsonData.turmas.dia, ...jsonData.turmas.noite].forEach((turma, turmaIndex) => {
        let cellContent = '';
        let cellClass = 'cell';
        let id = '';

        const isDayClass = turmaIndex < jsonData.turmas.dia.length;
        const isNightClass = !isDayClass;
        const scheduleType = isDayClass ? 'integral' : 'noturno';
        const adjustedTurmaIndex = isDayClass ? turmaIndex : turmaIndex - jsonData.turmas.dia.length;

        if ((isDayClass && i < 10) || (isNightClass && i >= 10)) {
          if (scheduleData[scheduleType] &&
            scheduleData[scheduleType][adjustedTurmaIndex]) {
            const cellIndex = isDayClass ? diaIndex * 10 + i : diaIndex * 4 + (i - 10);
            const cellValue = scheduleData[scheduleType][adjustedTurmaIndex][cellIndex];
            if (cellValue !== undefined && cellValue !== -1) {
              cellContent = cellValue.toString();
            }
          }
          const prefix = isDayClass ? 'I' : 'N';
          const dayAbbr = dayAbbreviations[diaIndex];
          const adjustedRowIndex = isNightClass ? i - 10 : i;
          id = `${dayAbbr}${prefix}${adjustedTurmaIndex.toString().padStart(3, '0')}-${adjustedRowIndex.toString().padStart(3, '0')}`;
        } else {
          cellClass += ' disabled';
        }

        tableHTML += `<td class="${cellClass}" id="${id}F">${cellContent}</td>`;
      });
      tableHTML += '</tr>';
    }

    tableHTML += '</tbody>';
    table.innerHTML = tableHTML;
    carouselTrack.appendChild(table);
  });

  const cells = carouselTrack.querySelectorAll('.cell:not(.header):not(.numero):not(.disabled)');
  cells.forEach((cell) => {
    cell.addEventListener('click', handleCellClick);
    cell.addEventListener('contextmenu', handleContextMenu);
  });
}
function createTowerViewTable() {
  const carouselTrack = document.querySelector('#tower-view-tab .carousel-track');
  if (!carouselTrack) {
    console.error('Tower view carousel track not found');
    return;
  }
  carouselTrack.innerHTML = ''; // Clear existing content

  const dayAbbreviations = ['SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB'];

  // Create only 3 tables for Dia, Tarde, and Noite
  jsonData.turnos.forEach((turno, turnoIndex) => {
    const table = document.createElement('table');
    table.className = 'tabela-container';

    let tableHTML = '<thead><tr>';
    tableHTML += `<th class="cell header numero sticky-header">${turno}</th>`;
    const turmas = turno === 'Noite' ? jsonData.turmas.noite : jsonData.turmas.dia;
    turmas.forEach(turma => {
      tableHTML += `<th class="cell header turma-header sticky-header">${turma}</th>`;
    });
    tableHTML += '</tr></thead><tbody>';

    const rowCount = turno === 'Dia' ? 6 : (turno === 'Tarde' ? 4 : 4);

    jsonData.dias.forEach((dia, diaIndex) => {
      for (let i = 0; i < rowCount; i++) {
        tableHTML += '<tr>';
        if (i === 0) {
          tableHTML += `<td class="cell numero" rowspan="${rowCount}">${dia}</td>`;
        }
        turmas.forEach((turma, turmaIndex) => {
          let cellContent = '';
          let cellClass = 'cell';
          let id = '';

          const scheduleType = turno === 'Noite' ? 'noturno' : 'integral';
          const adjustedIndex = turno === 'Tarde' ? i + 6 : i;

          if (scheduleData[scheduleType] && scheduleData[scheduleType][turmaIndex]) {
            const cellIndex = diaIndex * (scheduleType === 'integral' ? 10 : 4) + adjustedIndex;
            const cellValue = scheduleData[scheduleType][turmaIndex][cellIndex];
            if (cellValue !== undefined && cellValue !== -1) {
              cellContent = cellValue.toString();
            }
          }

          const prefix = turno === 'Noite' ? 'N' : 'I';
          const dayAbbr = dayAbbreviations[diaIndex];
          id = `${dayAbbr}${prefix}${turmaIndex.toString().padStart(3, '0')}-${adjustedIndex.toString().padStart(3, '0')}`;

          tableHTML += `<td class="${cellClass}" id="${id}T">${cellContent}</td>`;
        });
        tableHTML += '</tr>';
      }
      // Add a separator row between days
      if (diaIndex < jsonData.dias.length - 1) {
        tableHTML += '<tr class="day-separator"><td colspan="' + (turmas.length + 1) + '"></td></tr>';
      }
    });

    tableHTML += '</tbody>';
    table.innerHTML = tableHTML;
    carouselTrack.appendChild(table);
  });

  const cells = carouselTrack.querySelectorAll('.cell:not(.header):not(.numero)');
  cells.forEach((cell) => {
    cell.addEventListener('click', handleCellClick);
    cell.addEventListener('contextmenu', handleContextMenu);
  });
}
function setupScrollock() {
  const scrollLockToggle = document.getElementById('scrollLockToggle');
  scrollLockToggle.addEventListener('click', toggleScrollLock);
  document.addEventListener('keydown', handleKeyDown);
  // Add event listener for right-click (contextmenu) events
  document.addEventListener('contextmenu', handleContextMenu);
}
function toggleScrollLock() {
  isScrollLocked = !isScrollLocked;
  updateScrollLockIcon();
}

function updateScrollLockIcon() {
  const scrollLockToggle = document.getElementById('scrollLockToggle');
  scrollLockToggle.textContent = isScrollLocked ? '🔒' : '🔓';
  scrollLockToggle.classList.toggle('active', isScrollLocked);
}

function handleKeyDown(event) {
  if (event.key === 'Shift') {
    toggleScrollLock();
  }
}
function setupdianoiteToggle() {
  const toggle = document.getElementById('dianoiteToggle');
  const toggleContainer = document.querySelector('.toggle-container');
  const leftLabel = document.getElementById('leftLabel');
  const rightLabel = document.getElementById('rightLabel');
  const fullViewToggle = document.getElementById('fullViewToggle');
  const towerViewToggle = document.getElementById('towerViewToggle');

  function toggleMode(mode) {
    if (viewState.isFullView || viewState.isTowerView) return;
    updateViewState({ activeTab: mode });
  }

  function updateToggleState() {
    toggleContainer.classList.toggle('disabled', viewState.isFullView || viewState.isTowerView);
    toggle.disabled = viewState.isFullView || viewState.isTowerView;
    leftLabel.setAttribute('aria-disabled', viewState.isFullView || viewState.isTowerView);
    rightLabel.setAttribute('aria-disabled', viewState.isFullView || viewState.isTowerView);
  }

  toggle.addEventListener('change', function () {
    if (!viewState.isFullView && !viewState.isTowerView) {
      toggleMode(this.checked ? 'noite' : 'dia');
    }
  });

  leftLabel.addEventListener('click', function () {
    if (!viewState.isFullView && !viewState.isTowerView && viewState.activeTab === 'noite') {
      toggleMode('dia');
    }
  });

  rightLabel.addEventListener('click', function () {
    if (!viewState.isFullView && !viewState.isTowerView && viewState.activeTab === 'dia') {
      toggleMode('noite');
    }
  });
  // Initial state setup
  updateToggleState();
}


function adjustCarouselSize() {
  const carouselContainer = document.querySelector(`#${viewState.activeTab}-tab .carousel-container`);

  carouselContainer.style.height = 'calc(100vh - 100px)';
  carouselContainer.style.width = '100%';
  carouselContainer.style.overflowY = 'scroll';
  carouselContainer.style.overflowX = 'hidden';

  const tables = carouselContainer.querySelectorAll('.tabela-container');
  tables.forEach(table => {
    table.style.width = '100%';
  });
}
// Modify the updateUI function
function updateUI() {
  // Update tab visibility
  document.getElementById('dia-tab').classList.toggle('active', viewState.activeTab === 'dia');
  document.getElementById('noite-tab').classList.toggle('active', viewState.activeTab === 'noite');
  document.getElementById('full-view-tab').classList.toggle('active', viewState.isFullView);
  document.getElementById('tower-view-tab').classList.toggle('active', viewState.isTowerView);

  // Update dropdown selection
  document.getElementById('viewSelector').value = viewState.activeTab;


  // Update carousel position
  if (viewState.activeTab === 'tower-view') {
    updateTowerCarouselPosition();
  } else {
    updateCarouselPosition();
  }

  handleSideContainerVisibility();
  adjustCarouselSize();
}
function setupViewSelector() {
  const viewSelector = document.getElementById('viewSelector');

  viewSelector.addEventListener('change', function () {
    const selectedView = this.value;
    updateViewState({
      activeTab: selectedView,
      isFullView: selectedView === 'full-view',
      isTowerView: selectedView === 'tower-view'
    });
  });
}
// Modify existing functions to use the new viewState object
function updateCarouselPosition() {
  if (viewState.activeTab === 'tower-view') return;
  const carouselTrack = document.querySelector(`#${viewState.activeTab}-tab .carousel-track`);
  const tables = carouselTrack.children;
  const itemWidth = tables[0].offsetWidth;

  carouselTrack.style.transform = `translateX(${-viewState.currentCarouselIndex * itemWidth}px)`;

  Array.from(tables).forEach((table, index) => {
    let distance = Math.min(
      Math.abs(index - viewState.currentCarouselIndex),
      Math.abs(index - viewState.currentCarouselIndex + jsonData.dias.length),
      Math.abs(index - viewState.currentCarouselIndex - jsonData.dias.length)
    );

    if (distance === 0) {
      table.style.opacity = '1';
      table.style.transform = 'scale(1)';
      table.style.zIndex = '10';
    } else if (distance === 1) {
      table.style.opacity = '0.5';
      table.style.transform = 'scale(0.9)';
      table.style.zIndex = '5';
    } else {
      table.style.opacity = '0';
      table.style.transform = 'scale(0.8)';
      table.style.zIndex = '0';
    }
  });
}

function moveCarouselLeft() {
  currentCarouselIndex = (currentCarouselIndex - 1 + jsonData.dias.length) % jsonData.dias.length;
  currentViewState.currentCarouselIndex = currentCarouselIndex;
  updateCarouselPosition();
}

function moveCarouselRight() {
  currentCarouselIndex = (currentCarouselIndex + 1) % jsonData.dias.length;
  currentViewState.currentCarouselIndex = currentCarouselIndex;
  updateCarouselPosition();
}

function moveTowerCarouselLeft() {
  towerCarouselIndex = (towerCarouselIndex - 1 + jsonData.turnos.length) % jsonData.turnos.length;
  currentViewState.towerCarouselIndex = towerCarouselIndex;
  updateTowerCarouselPosition();
}

function moveTowerCarouselRight() {
  towerCarouselIndex = (towerCarouselIndex + 1) % jsonData.turnos.length;
  currentViewState.towerCarouselIndex = towerCarouselIndex;
  updateTowerCarouselPosition();
}
function updateViewState(updates) {
  Object.assign(viewState, updates);
  updateUI();
}
function handleCarouselMove(direction) {
  const { activeTab, currentCarouselIndex, towerCarouselIndex } = viewState;
  const maxIndex = activeTab === 'tower-view' ? 2 : 5; // Assuming 3 tower views and 6 days

  if (activeTab === 'tower-view') {
    const newIndex = direction === 'left'
      ? (towerCarouselIndex - 1 + 3) % 3
      : (towerCarouselIndex + 1) % 3;
    updateViewState({ towerCarouselIndex: newIndex });
  } else {
    const newIndex = direction === 'left'
      ? (currentCarouselIndex - 1 + 6) % 6
      : (currentCarouselIndex + 1) % 6;
    updateViewState({ currentCarouselIndex: newIndex });
  }
}


function updateTowerCarouselPosition() {
  const carouselTrack = document.querySelector('#tower-view-tab .carousel-track');
  const tables = carouselTrack.children;
  const itemWidth = tables[0].offsetWidth;

  carouselTrack.style.transform = `translateX(${-viewState.towerCarouselIndex * itemWidth}px)`;

  Array.from(tables).forEach((table, index) => {
    let distance = Math.min(
      Math.abs(index - viewState.towerCarouselIndex),
      Math.abs(index - viewState.towerCarouselIndex + tables.length),
      Math.abs(index - viewState.towerCarouselIndex - tables.length)
    );

    if (distance === 0) {
      table.style.opacity = '1';
      table.style.transform = 'scale(1)';
      table.style.zIndex = '10';
    } else if (distance === 1) {
      table.style.opacity = '0.5';
      table.style.transform = 'scale(0.9)';
      table.style.zIndex = '5';
    } else {
      table.style.opacity = '0';
      table.style.transform = 'scale(0.8)';
      table.style.zIndex = '0';
    }
  });
}
function handleWindowResize() {
  handleSideContainerVisibility();
  adjustCarouselSize();
  if (activeTab === 'tower-view') {
    updateTowerCarouselPosition();
  } else {
    updateCarouselPosition();
  }

  // Trigger a scroll event after a short delay
  setTimeout(() => {
    window.dispatchEvent(new Event('scroll'));
  }, 100);
}

// Add an event listener for window resize
window.addEventListener('resize', handleWindowResize);

// Update data

// Update this function to handle string input
function updateJSONDataById(id, content) {
  const [dayAbbr, prefix, turmaId, cellIndex] = id.match(/([A-Z]+)([NI])(\d{3})-(\d{3})/).slice(1);
  const scheduleType = prefix === 'I' ? 'integral' : 'noturno';
  const turmaIndex = parseInt(turmaId, 10);
  const dayIndex = ['SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB'].indexOf(dayAbbr);
  const cellIndexNum = parseInt(cellIndex, 10);
  const offset = scheduleType === 'integral' ? 10 : 4;

  if (scheduleData[scheduleType][turmaIndex]) {
    scheduleData[scheduleType][turmaIndex][dayIndex * offset + cellIndexNum] = content ? content : '';
  }
}

function checkAndUpdateEmptyHours(cellId) {
  const [dayAbbr, prefix, turmaId, cellIndex] = cellId.match(/([A-Z]+)([NI])(\d{3})-(\d{3})/).slice(1);
  const turmaIndex = parseInt(turmaId, 10);
  const cellIndexNum = parseInt(cellIndex, 10);

  if (prefix === 'I' && cellIndexNum < 6) {
    const views = ['S', 'F', 'T']; // Standard, Full, Tower
    views.forEach(view => {
      const cell = document.querySelector(`td[id="${cellId}${view}"]`);
      if (cell) {
        cell.classList.toggle('empty-hour', cell.textContent.trim() === '');
      }
    });
  }
}

function updateCorrespondingCells(cellId, content) {
  const cells = document.querySelectorAll(`td[id^="${cellId.slice(0, -1)}"]`);
  cells.forEach(cell => {
    cell.textContent = content;
    removeHighlighting(cell);

    // Check and update empty hour highlighting for integral classes
    checkAndUpdateEmptyHours(cell.id);
  });
}
function updateAllEmptyHours() {
  const dayAbbreviations = ['SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB'];

  dayAbbreviations.forEach((dayAbbr) => {
    jsonData.turmas.dia.forEach((_, turmaIndex) => {
      for (let i = 0; i < 6; i++) {
        const cellId = `${dayAbbr}I${turmaIndex.toString().padStart(3, '0')}-${i.toString().padStart(3, '0')}`;
        checkAndUpdateEmptyHours(cellId);
      }
    });
  });
}

function updateDataFromCell(cell, newScheduleData, scheduleType) {
  const [dayAbbr, prefix, turmaId, cellIndex] = cell.id.match(/([A-Z]+)([NI])(\d{3})-(\d{3})/).slice(1);
  const dayIndex = ['SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB'].indexOf(dayAbbr);
  const turmaIndex = parseInt(turmaId, 10);
  const cellIndexNum = parseInt(cellIndex, 10);
  const offset = scheduleType === 'integral' ? 10 : 4;

  if (newScheduleData[scheduleType][turmaIndex]) {
    newScheduleData[scheduleType][turmaIndex][dayIndex * offset + cellIndexNum] = cell.textContent ? parseFloat(cell.textContent) : -1;
  }
}

function updateTabVisibility() {
  const diaTab = document.getElementById('dia-tab');
  const noiteTab = document.getElementById('noite-tab');
  const fullViewTab = document.getElementById('full-view-tab');
  const towerViewTab = document.getElementById('tower-view-tab');

  diaTab.classList.remove('active');
  noiteTab.classList.remove('active');
  fullViewTab.classList.remove('active');
  towerViewTab.classList.remove('active');

  if (activeTab === 'dia') {
    diaTab.classList.add('active');
  } else if (activeTab === 'noite') {
    noiteTab.classList.add('active');
  } else if (activeTab === 'full-view') {
    fullViewTab.classList.add('active');
  } else if (activeTab === 'tower-view') {
    towerViewTab.classList.add('active');
  }
}
function updateScheduleData() {
  const dayAbbreviations = ['SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB'];
  const newScheduleData = {
    integral: Array.from({ length: jsonData.turmas.dia.length }, () => Array(60).fill(-1)),
    noturno: Array.from({ length: jsonData.turmas.noite.length }, () => Array(24).fill(-1))
  };

  // Function to update the appropriate array in newScheduleData
  const updateData = (id, content) => {
    const [dayAbbr, prefix, turmaId, cellIndex] = id.match(/([A-Z]+)([NI])(\d{3})-(\d{3})/).slice(1);
    const dayIndex = dayAbbreviations.indexOf(dayAbbr);
    const turmaIndex = parseInt(turmaId, 10);
    const cellIndexNum = parseInt(cellIndex, 10);
    const scheduleType = prefix === 'I' ? 'integral' : 'noturno';
    const offset = scheduleType === 'integral' ? 10 : 4;

    if (newScheduleData[scheduleType][turmaIndex]) {
      newScheduleData[scheduleType][turmaIndex][dayIndex * offset + cellIndexNum] = content ? parseFloat(content) || -1 : -1;
    }
  };

  // Update integral data
  document.querySelectorAll('#dia-tab .tabela-container td:not(.numero)').forEach(cell => {
    updateData(cell.id, cell.textContent.trim());
  });

  // Update noturno data
  document.querySelectorAll('#noite-tab .tabela-container td:not(.numero)').forEach(cell => {
    updateData(cell.id, cell.textContent.trim());
  });

  return newScheduleData;
}
function updateScheduleData() {
  const dayAbbreviations = ['SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB'];
  const newScheduleData = {
    integral: Array.from({ length: jsonData.turmas.dia.length }, () => Array(60).fill('')),
    noturno: Array.from({ length: jsonData.turmas.noite.length }, () => Array(24).fill(''))
  };

  // Function to update the appropriate array in newScheduleData
  const updateData = (id, content) => {
    const [dayAbbr, prefix, turmaId, cellIndex] = id.match(/([A-Z]+)([NI])(\d{3})-(\d{3})/).slice(1);
    const dayIndex = dayAbbreviations.indexOf(dayAbbr);
    const turmaIndex = parseInt(turmaId, 10);
    const cellIndexNum = parseInt(cellIndex, 10);
    const scheduleType = prefix === 'I' ? 'integral' : 'noturno';
    const offset = scheduleType === 'integral' ? 10 : 4;

    if (newScheduleData[scheduleType][turmaIndex]) {
      newScheduleData[scheduleType][turmaIndex][dayIndex * offset + cellIndexNum] = content;
    }
  };

  // Update integral data
  document.querySelectorAll('#dia-tab .tabela-container td:not(.numero)').forEach(cell => {
    updateData(cell.id, cell.textContent.trim());
  });

  // Update noturno data
  document.querySelectorAll('#noite-tab .tabela-container td:not(.numero)').forEach(cell => {
    updateData(cell.id, cell.textContent.trim());
  });

  return newScheduleData;
}
//ContextMenu/Time editor

function removeHighlighting(cell) {
  cell.classList.remove('highlighted-error', 'highlighted-warning');
}

// Modify the handleCellClick function
function handleCellClick() {
  if (this.classList.contains('disabled')) return;

  removeHighlighting(this);

  if (selectedCell === null) {
    selectedCell = this;
    selectedTable = this.closest('.tabela-container');
    this.style.backgroundColor = '#00ff0d';
  } else {
    // Store the current state in history before making changes
    addToHistory();

    // Store the content of both cells
    const selectedContent = selectedCell.textContent;
    const currentContent = this.textContent;

    // Swap content
    this.textContent = selectedContent;
    selectedCell.textContent = currentContent;

    // Update JSON data
    updateJSONDataById(selectedCell.id, currentContent);
    updateJSONDataById(this.id, selectedContent);

    // Update corresponding cells in other views
    updateCorrespondingCells(selectedCell.id, currentContent);
    updateCorrespondingCells(this.id, selectedContent);

    // Remove highlighting from the previously selected cell
    removeHighlighting(selectedCell);

    // Reset selection
    this.style.backgroundColor = '';
    selectedCell.style.backgroundColor = '';
    selectedCell = null;
    selectedTable = null;

    // Update the scheduleData
    scheduleData = updateScheduleData();
    console.log('Updated scheduleData after cell click:', scheduleData);

    // Check and update empty hour highlighting for the affected cells
    checkAndUpdateEmptyHours(this.id);
    checkAndUpdateEmptyHours(selectedCell.id);
  }
  const results = analyzeSchedule(scheduleData);
  displayAnalysisResults(results);
  handleViewChange();
}

// Add these new functions
function addToHistory() {
  scheduleHistory.push({
    data: JSON.parse(JSON.stringify(scheduleData)),
    viewState: {
      activeTab: activeTab,
      currentCarouselIndex: currentCarouselIndex,
      towerCarouselIndex: towerCarouselIndex,
      isFullView: isFullView,
      isTowerView: isTowerView
    }
  });
  if (scheduleHistory.length > MAX_HISTORY) {
    scheduleHistory.shift();
  }
}

// Update the undoLastChange function
function undoLastChange() {
  if (scheduleHistory.length > 0) {
    const lastState = scheduleHistory.pop();
    scheduleData = lastState.data;

    // Restore the view state
    activeTab = lastState.viewState.activeTab;
    currentCarouselIndex = lastState.viewState.currentCarouselIndex;
    towerCarouselIndex = lastState.viewState.towerCarouselIndex;
    isFullView = lastState.viewState.isFullView;
    isTowerView = lastState.viewState.isTowerView;

    // Update the UI to reflect the restored state
    recreateTables();
    updateAllEmptyHours();
    updateTabVisibility();

    if (isTowerView) {
      updateTowerCarouselPosition();
    } else {
      updateCarouselPosition();
    }

    handleSideContainerVisibility();
    adjustCarouselSize();

    // Update toggle states
    const fullViewToggle = document.getElementById('fullViewToggle');
    const towerViewToggle = document.getElementById('towerViewToggle');
    const dianoiteToggle = document.getElementById('dianoiteToggle');

    fullViewToggle.classList.toggle('active', isFullView);
    towerViewToggle.classList.toggle('active', isTowerView);
    dianoiteToggle.checked = activeTab === 'noite';

    // Force a re-render of the current view
    if (activeTab === 'full-view') {
      createFullViewTable();
    } else if (activeTab === 'tower-view') {
      createTowerViewTable();
    } else {
      createTableForTab(activeTab);
    }

    const results = analyzeSchedule(scheduleData);
    displayAnalysisResults(results);
    console.log('Undid last change, maintaining table and day');
  } else {
    console.log('No more changes to undo');
  }
}



document.addEventListener('keydown', function (event) {
  if (event.ctrlKey && event.key === 'z') {
    event.preventDefault();
    undoLastChange();
  }
});



function updateCorrespondingCells(cellId, content) {
  const cells = document.querySelectorAll(`td[id^="${cellId.slice(0, -1)}"]`);
  cells.forEach(cell => {
    cell.textContent = content;
    removeHighlighting(cell);
  });

  // Update empty hour highlighting for all integral classes
  updateAllEmptyHours();
}

function handleContextMenu(e) {
  // Existing context menu logic
  const existingMenu = document.querySelector('.context-menu');
  if (existingMenu) {
    existingMenu.remove();
  }
  e.preventDefault();
  const box = document.createElement('div');
  box.className = 'context-menu';
  box.style.top = `${e.clientY}px`;
  box.style.left = `${e.clientX + 3}px`;

  const lockCont = document.createElement('button');
  lockCont.textContent = 'Travar';
  lockCont.addEventListener('click', () => {
    box.remove();
    toggleScrollLock();
  });

  const deletar = document.createElement('button');
  deletar.textContent = 'Deletar';
  deletar.addEventListener('click', () => {
    box.remove();
    if (e.target.tagName === 'TD') {
      e.target.textContent = '';
      e.target.style.backgroundColor = '';
      updateCorrespondingCells(e.target.id, '');
      updateJSONDataById(e.target.id, '-1.0');
      scheduleData = updateScheduleData();
      const results = analyzeSchedule(scheduleData);
      displayAnalysisResults(results);
    }
  });

  box.appendChild(deletar);
  box.appendChild(lockCont);

  document.body.appendChild(box);

  // Remove the context menu when clicking outside of it
  document.addEventListener('click', (e) => {
    if (!box.contains(e.target)) {
      box.remove();
    }
  }, { once: true });
}
//   PDF


function setupPDFDownload() {
  const downloadTurmasButton = document.getElementById('downloadTurmasPDF');
  const downloadTeachersButton = document.getElementById('downloadTeachersPDF');
  downloadTeachersButton.addEventListener('click', downloadTeachersPDF);
  downloadTurmasButton.addEventListener('click', downloadTurmasPDF);
}

function downloadCurrentPDF() {
  const currentTable = document.querySelectorAll(`#${activeTab}-tab .tabela-container`)[currentCarouselIndex];
  generatePDF(currentTable, `Horario_${jsonData.dias[currentCarouselIndex]}_${activeTab}.pdf`);
}

function downloadAllPDFs() {
  const tables = document.querySelectorAll(`#${activeTab}-tab .tabela-container`);
  const pdf = new jspdf.jsPDF({
    orientation: 'landscape',
    unit: 'mm',
    format: 'a4'
  });

  tables.forEach((table, index) => {
    if (index > 0) {
      pdf.addPage();
    }
    generatePDFPage(pdf, table, `${jsonData.dias[index]} - ${activeTab.charAt(0).toUpperCase() + activeTab.slice(1)}`);
  });

  pdf.save(`Todos_Horarios_${activeTab}.pdf`);
}

function generatePDF(table, filename) {
  const pdf = new jspdf.jsPDF({
    orientation: 'landscape',
    unit: 'mm',
    format: 'a4'
  });
  generatePDFPage(pdf, table, jsonData.dias[currentCarouselIndex]);
  pdf.save(filename);
}

function generatePDFPage(pdf, table, title) {
  const pageWidth = pdf.internal.pageSize.width;
  const pageHeight = pdf.internal.pageSize.height;
  const margin = 10;

  pdf.setFontSize(18);
  pdf.text(title, margin, margin + 10);

  const columns = [];
  const data = [];

  const headers = table.querySelectorAll('th');
  headers.forEach(header => columns.push(header.textContent));

  const rows = table.querySelectorAll('tbody tr');
  rows.forEach(row => {
    const rowData = [];
    row.querySelectorAll('td').forEach(cell => rowData.push(cell.textContent));
    data.push(rowData);
  });

  pdf.autoTable({
    head: [columns],
    body: data,
    startY: margin + 20,
    theme: 'grid',
    styles: {
      fontSize: 10,
      cellPadding: 2,
      overflow: 'linebreak',
      halign: 'center',
      valign: 'middle'
    },
    headStyles: {
      fillColor: [30, 136, 229],
      textColor: 255,
      fontSize: 12
    },
    alternateRowStyles: {
      fillColor: [224, 242, 255]
    },
    margin: { top: margin, right: margin, bottom: margin, left: margin },
    tableWidth: pageWidth - (2 * margin)
  });
}
async function downloadTurmasPDF() {
  const zip = new JSZip();
  const pdf = new jspdf.jsPDF({
    orientation: 'landscape',
    unit: 'mm',
    format: 'a4'
  });

  const turmas = [...jsonData.turmas.dia, ...jsonData.turmas.noite];
  const scheduleTypes = ['integral', 'noturno'];

  for (let turmaIndex = 0; turmaIndex < turmas.length; turmaIndex++) {
    const turma = turmas[turmaIndex];
    const scheduleType = turmaIndex < jsonData.turmas.dia.length ? 'integral' : 'noturno';
    const adjustedTurmaIndex = scheduleType === 'integral' ? turmaIndex : turmaIndex - jsonData.turmas.dia.length;

    pdf.deletePage(1);
    pdf.addPage();

    const title = `Horário - ${turma}`;
    pdf.setFontSize(18);
    pdf.text(title, 10, 20);

    const columns = ['Horário', ...jsonData.dias];
    let data = [];

    const dayLength = scheduleType === 'integral' ? 10 : 4;
    const morningLength = scheduleType === 'integral' ? 6 : dayLength;
    const afternoonLength = scheduleType === 'integral' ? 4 : 0;

    // Generate data for morning (or full noturno schedule)
    for (let i = 0; i < morningLength; i++) {
      const row = [i + 1];
      for (let day = 0; day < 6; day++) {
        const cellIndex = day * dayLength + i;
        let cellValue = '';

        if (scheduleData &&
          scheduleData[scheduleType] &&
          scheduleData[scheduleType][adjustedTurmaIndex] &&
          scheduleData[scheduleType][adjustedTurmaIndex][cellIndex] !== undefined) {
          cellValue = scheduleData[scheduleType][adjustedTurmaIndex][cellIndex];
          cellValue = cellValue === -1 ? '' : cellValue.toString();
        }

        row.push(cellValue);
      }
      data.push(row);
    }

    // Generate first table (morning for integral, full schedule for noturno)
    pdf.autoTable({
      head: [columns],
      body: data,
      startY: 30,
      theme: 'grid',
      styles: {
        fontSize: 10,
        cellPadding: 2,
        overflow: 'linebreak',
        halign: 'center',
        valign: 'middle'
      },
      headStyles: {
        fillColor: [30, 136, 229],
        textColor: 255,
        fontSize: 12
      },
      alternateRowStyles: {
        fillColor: [224, 242, 255]
      },
      margin: { top: 30, right: 10, bottom: 10, left: 10 },
      tableWidth: 'auto'
    });

    // For integral schedules, create a second table for afternoon
    if (scheduleType === 'integral') {
      data = [];
      for (let i = morningLength; i < dayLength; i++) {
        const row = [i + 1];
        for (let day = 0; day < 6; day++) {
          const cellIndex = day * dayLength + i;
          let cellValue = '';

          if (scheduleData &&
            scheduleData[scheduleType] &&
            scheduleData[scheduleType][adjustedTurmaIndex] &&
            scheduleData[scheduleType][adjustedTurmaIndex][cellIndex] !== undefined) {
            cellValue = scheduleData[scheduleType][adjustedTurmaIndex][cellIndex];
            cellValue = cellValue === -1 ? '' : cellValue.toString();
          }

          row.push(cellValue);
        }
        data.push(row);
      }

      // Generate second table (afternoon for integral)
      pdf.autoTable({
        head: [columns],
        body: data,
        startY: pdf.previousAutoTable.finalY + 10,
        theme: 'grid',
        styles: {
          fontSize: 10,
          cellPadding: 2,
          overflow: 'linebreak',
          halign: 'center',
          valign: 'middle'
        },
        headStyles: {
          fillColor: [30, 136, 229],
          textColor: 255,
          fontSize: 12
        },
        alternateRowStyles: {
          fillColor: [224, 242, 255]
        },
        margin: { top: 10, right: 10, bottom: 10, left: 10 },
        tableWidth: 'auto'
      });
    }

    const pdfBlob = pdf.output('blob');
    zip.file(`${turma}.pdf`, pdfBlob);
  }

  try {
    const zipBlob = await zip.generateAsync({ type: 'blob' });
    const downloadLink = document.createElement('a');
    downloadLink.href = URL.createObjectURL(zipBlob);
    downloadLink.download = 'Horarios_Turmas.zip';
    document.body.appendChild(downloadLink);
    downloadLink.click();
    document.body.removeChild(downloadLink);
  } catch (error) {
    console.error('Error generating ZIP file:', error);
    alert('An error occurred while generating the ZIP file. Please try again.');
  }
}
async function downloadTeachersPDF() {
  const zip = new JSZip();
  const pdf = new jspdf.jsPDF({
    orientation: 'landscape',
    unit: 'mm',
    format: 'a4'
  });

  const teachers = new Set();
  const scheduleTypes = ['integral', 'noturno'];

  // Collect all unique teacher IDs
  scheduleTypes.forEach(type => {
    if (scheduleData[type]) {
      scheduleData[type].forEach(turmaSchedule => {
        turmaSchedule.forEach(teacherId => {
          if (teacherId !== -1) {
            teachers.add(teacherId);
          }
        });
      });
    }
  });

  for (const teacherId of teachers) {
    pdf.deletePage(1);
    pdf.addPage();

    const title = `Horário - Professor ${teacherId}`;
    pdf.setFontSize(18);
    pdf.text(title, 10, 20);

    const columns = ['Horário', ...jsonData.dias];
    const data = [];

    // Prepare data for the table
    for (let timeSlot = 1; timeSlot <= 14; timeSlot++) { // Ajuste para percorrer 14 horários
      const row = [timeSlot];
      for (let day = 0; day < 6; day++) {
        let cellContent = '';
        scheduleTypes.forEach(type => {
          if (scheduleData[type]) {
            const dayLength = type === 'integral' ? 10 : 4; // Mantendo o cálculo de comprimento
            const totalSlots = type === 'integral' ? 10 : 14; // Ajuste para 14 horários no total
            scheduleData[type].forEach((turmaSchedule, turmaIndex) => {
              const cellIndex = day * totalSlots + (timeSlot - 1); // Ajuste do índice
              if (turmaSchedule[cellIndex] === teacherId) {
                const turmaName = type === 'integral' ? jsonData.turmas.dia[turmaIndex] : jsonData.turmas.noite[turmaIndex];
                cellContent += `${turmaName} (${type === 'integral' ? 'I' : 'N'})\n`;
              }
            });
          }
        });
        row.push(cellContent.trim());
      }
      data.push(row);
    }

    // Generate table
    pdf.autoTable({
      head: [columns],
      body: data,
      startY: 30,
      theme: 'grid',
      styles: {
        fontSize: 8,
        cellPadding: 2,
        overflow: 'linebreak',
        halign: 'center',
        valign: 'middle'
      },
      headStyles: {
        fillColor: [30, 136, 229],
        textColor: 255,
        fontSize: 10
      },
      alternateRowStyles: {
        fillColor: [224, 242, 255]
      },
      margin: { top: 30, right: 10, bottom: 10, left: 10 },
      tableWidth: 'auto'
    });

    const pdfBlob = pdf.output('blob');
    zip.file(`Professor_${teacherId}.pdf`, pdfBlob);
  }

  try {
    const zipBlob = await zip.generateAsync({ type: 'blob' });
    const downloadLink = document.createElement('a');
    downloadLink.href = URL.createObjectURL(zipBlob);
    downloadLink.download = 'Horarios_Professores.zip';
    document.body.appendChild(downloadLink);
    downloadLink.click();
    document.body.removeChild(downloadLink);
  } catch (error) {
    console.error('Error generating ZIP file:', error);
    alert('An error occurred while generating the ZIP file. Please try again.');
  }
}

function handleDownload() {
  const inputElement = document.getElementById('teacherInput');
  const teacherId = inputElement.value.trim();


  if (!teacherId || isNaN(teacherId)) {
    alert('Por favor, digite um ID de professor válido.');
    return;
  }


  downloadselecTeacherPDF(parseInt(teacherId, 10));
}




async function downloadselecTeacherPDF(teacherId) {
  const pdf = new jspdf.jsPDF({
    orientation: 'landscape',
    unit: 'mm',
    format: 'a4'
  });

  const title = `Horário - Professor ${teacherId}`;
  pdf.setFontSize(18);
  pdf.text(title, 10, 20);

  const columns = ['Horário', ...jsonData.dias]; // jsonData.dias contém os dias da semana
  const data = [];

  const scheduleTypes = ['integral', 'noturno']; // Tipos de horário (ex.: integral e noturno)

  // Prepara os dados para a tabela
  for (let timeSlot = 1; timeSlot <= 14; timeSlot++) { // Ajuste para percorrer 14 horários
    const row = [timeSlot];
    for (let day = 0; day < 6; day++) {
      let cellContent = '';
      scheduleTypes.forEach(type => {
        if (scheduleData[type]) {
          const dayLength = type === 'integral' ? 10 : 4; // Mantendo o cálculo de comprimento
          const totalSlots = type === 'integral' ? 10 : 14; // Ajuste para 14 horários no total
          scheduleData[type].forEach((turmaSchedule, turmaIndex) => {
            const cellIndex = day * totalSlots + (timeSlot - 1); // Ajuste do índice
            if (turmaSchedule[cellIndex] === teacherId) {
              const turmaName = type === 'integral' ? jsonData.turmas.dia[turmaIndex] : jsonData.turmas.noite[turmaIndex];
              cellContent += `${turmaName} (${type === 'integral' ? 'I' : 'N'})\n`;
            }
          });
        }
      });
      row.push(cellContent.trim());
    }
    data.push(row);
  }

  // Gera a tabela no PDF
  pdf.autoTable({
    head: [columns],
    body: data,
    startY: 30,
    theme: 'grid',
    styles: {
      fontSize: 8,
      cellPadding: 2,
      overflow: 'linebreak',
      halign: 'center',
      valign: 'middle'
    },
    headStyles: {
      fillColor: [30, 136, 229],
      textColor: 255,
      fontSize: 10
    },
    alternateRowStyles: {
      fillColor: [224, 242, 255]
    },
    margin: { top: 30, right: 10, bottom: 10, left: 10 },
    tableWidth: 'auto'
  });

  try {
    const pdfBlob = pdf.output('blob');
    const downloadLink = document.createElement('a');
    downloadLink.href = URL.createObjectURL(pdfBlob);
    downloadLink.download = `Horário_Professor_${teacherId}.pdf`;
    document.body.appendChild(downloadLink);
    downloadLink.click();
    document.body.removeChild(downloadLink);
  } catch (error) {
    console.error('Erro ao gerar o arquivo PDF:', error);
    alert('Ocorreu um erro ao gerar o arquivo PDF. Por favor, tente novamente.');
  }
}


// Analyzer

function handleAnalyzeClick() {
  const results = analyzeSchedule(scheduleData);
  displayAnalysisResults(results);
}
function handleMouseWheel(e) {
  if (isScrollLocked) return;
  e.preventDefault();
  if (e.deltaX > 0 || e.deltaY > 0) {
    moveCarouselRight();
  } else {
    moveCarouselLeft();
  }
}

/* ANÁLISE*/


function analyzeSchedule(scheduleData) {
  const errors = {
    integral: {},
    noturno: {}
  };
  const warnings = {
    integral: {},
    noturno: {}
  };

  const days = 6; // Monday to Saturday
  const teacherDayAppearances = {};
  const teacherClassSequences = {};

  for (let day = 0; day < days; day++) {
    const teacherCounts = {};
    const teacherClasses = {};

    const analyzeType = (type) => {
      const dayLength = type === 'integral' ? 10 : 4;

      for (let turmaIndex = 0; turmaIndex < scheduleData[type].length; turmaIndex++) {
        const turmaSchedule = scheduleData[type][turmaIndex];
        const dayStart = day * dayLength;
        const dayEnd = dayStart + dayLength;
        const daySchedule = turmaSchedule.slice(dayStart, dayEnd);

        daySchedule.forEach((teacherId, classIndex) => {
          if (teacherId && teacherId.trim() !== '') {
            teacherCounts[teacherId] = (teacherCounts[teacherId] || 0) + 1;
            if (!teacherDayAppearances[teacherId]) {
              teacherDayAppearances[teacherId] = new Set();
            }
            teacherDayAppearances[teacherId].add(day);

            if (!teacherClasses[teacherId]) {
              teacherClasses[teacherId] = [];
            }
            teacherClasses[teacherId].push({ type, classIndex, turmaIndex });

            if (!teacherClassSequences[teacherId]) {
              teacherClassSequences[teacherId] = {};
            }
            if (!teacherClassSequences[teacherId][day]) {
              teacherClassSequences[teacherId][day] = [];
            }
            teacherClassSequences[teacherId][day].push({ type, classIndex });
          }

          // Check for empty hours in Integral (1-6)
          if (type === 'integral' && classIndex < 6 && (!teacherId || teacherId.trim() === '')) {
            if (!errors[type][day]) errors[type][day] = [];
            errors[type][day].push({
              type: 'emptyHours',
              message: `Horário ${classIndex + 1} está vazio no dia ${jsonData.dias[day]} para a turma ${jsonData.turmas.dia[turmaIndex]}`,
              turma: jsonData.turmas.dia[turmaIndex],
              horario: classIndex + 1
            });
          }
        });
      }
    };

    analyzeType('integral');
    analyzeType('noturno');


    // Check for teachers with more than one class at the same time
    Object.entries(teacherClasses).forEach(([teacherId, classes]) => {
      const classMap = {};
      classes.forEach(({ type, classIndex, turmaIndex }) => {
        const key = `${type}-${classIndex}`;
        if (!classMap[key]) {
          classMap[key] = [];
        }
        classMap[key].push({ type, classIndex, turmaIndex });
      });

      Object.values(classMap).forEach(conflictingClasses => {
        if (conflictingClasses.length > 1) {
          const type = conflictingClasses[0].type;
          if (!errors[type][day]) errors[type][day] = [];
          const classTime = conflictingClasses[0].classIndex + 1;
          const turmas = conflictingClasses.map(c => jsonData.turmas[c.type === 'integral' ? 'dia' : 'noite'][c.turmaIndex]).join(', ');
          errors[type][day].push({
            type: 'conflictingClasses',
            message: `Professor ${teacherId} tem mais de uma aula ao mesmo tempo no dia ${jsonData.dias[day]}, horário ${classTime} (${type === 'integral' ? 'Integral' : 'Noturno'}). Turmas: ${turmas}`,
            professor: teacherId,
            horario: classTime,
            turmas: turmas.split(', ')
          });
        }
      });
    });

    // Check for teachers with more than 8 classes in a day (combined integral and noturno)
    Object.entries(teacherCounts).forEach(([teacherId, count]) => {
      if (count > 8) {
        if (!errors.integral[day]) errors.integral[day] = [];
        errors.integral[day].push({
          type: 'excessiveClasses',
          message: `Professor ${teacherId} tem ${count} aulas (mais de 8) no dia ${jsonData.dias[day]} (combinando Integral e Noturno)`,
          professor: teacherId,
          count: count
        });
      }
    });
  }

  // Check for teachers appearing in 4 or more days
  Object.entries(teacherDayAppearances).forEach(([teacherId, days]) => {
    if (days.size >= 4) {
      if (!warnings.integral['weekWarning']) warnings.integral['weekWarning'] = [];
      warnings.integral['weekWarning'].push({
        type: 'weekWarning',
        message: `Professor ${teacherId} aparece em ${days.size} dias na semana`,
        professor: teacherId,
        dayCount: days.size
      });
    }
  });

  // Check for non-consecutive classes
  Object.entries(teacherClassSequences).forEach(([teacherId, daySequences]) => {
    Object.entries(daySequences).forEach(([day, sequences]) => {
      const sortedSequences = sequences.sort((a, b) => {
        if (a.type !== b.type) return a.type === 'integral' ? -1 : 1;
        return a.classIndex - b.classIndex;
      });
      for (let i = 1; i < sortedSequences.length; i++) {
        const prev = sortedSequences[i - 1];
        const curr = sortedSequences[i];
        if (prev.type === curr.type && curr.classIndex - prev.classIndex > 1) {
          if (!warnings.integral['classSequence']) warnings.integral['classSequence'] = [];
          warnings.integral['classSequence'].push({
            type: 'nonConsecutiveClasses',
            message: `Professor ${teacherId} tem aulas não consecutivas no dia ${jsonData.dias[parseInt(day)]}: ${prev.classIndex + 1} e ${curr.classIndex + 1} (${prev.type === 'integral' ? 'Integral' : 'Noturno'})`,
            professor: teacherId,
            day: parseInt(day),
            firstClass: prev.classIndex + 1,
            secondClass: curr.classIndex + 1,
            scheduleType: prev.type
          });
        }
      }
    });
  });

  return { errors, warnings };
  function analyzeSchedule(scheduleData) {
    const errors = {
      integral: {},
      noturno: {}
    };
    const warnings = {
      integral: {},
      noturno: {}
    };

    const days = 6; // Monday to Saturday
    const teacherDayAppearances = {};
    const teacherClassSequences = {};

    for (let day = 0; day < days; day++) {
      const teacherCounts = {};
      const teacherClasses = {};

      const analyzeType = (type) => {
        const dayLength = type === 'integral' ? 10 : 4;

        for (let turmaIndex = 0; turmaIndex < scheduleData[type].length; turmaIndex++) {
          const turmaSchedule = scheduleData[type][turmaIndex];
          const dayStart = day * dayLength;
          const dayEnd = dayStart + dayLength;
          const daySchedule = turmaSchedule.slice(dayStart, dayEnd);

          daySchedule.forEach((teacherId, classIndex) => {
            if (teacherId && teacherId.trim() !== '') {
              teacherCounts[teacherId] = (teacherCounts[teacherId] || 0) + 1;
              if (!teacherDayAppearances[teacherId]) {
                teacherDayAppearances[teacherId] = new Set();
              }
              teacherDayAppearances[teacherId].add(day);

              if (!teacherClasses[teacherId]) {
                teacherClasses[teacherId] = [];
              }
              teacherClasses[teacherId].push({ type, classIndex, turmaIndex });

              if (!teacherClassSequences[teacherId]) {
                teacherClassSequences[teacherId] = {};
              }
              if (!teacherClassSequences[teacherId][day]) {
                teacherClassSequences[teacherId][day] = [];
              }
              teacherClassSequences[teacherId][day].push({ type, classIndex });
            }

            // Check for empty hours in Integral (1-6)
            if (type === 'integral' && classIndex < 6 && (!teacherId || teacherId.trim() === '')) {
              if (!errors[type][day]) errors[type][day] = [];
              errors[type][day].push({
                type: 'emptyHours',
                message: `Horário ${classIndex + 1} está vazio no dia ${jsonData.dias[day]} para a turma ${jsonData.turmas.dia[turmaIndex]}`,
                turma: jsonData.turmas.dia[turmaIndex],
                horario: classIndex + 1
              });
            }
          });
        }
      };

      analyzeType('integral');
      analyzeType('noturno');

      // Check for teachers with more than one class at the same time
      Object.entries(teacherClasses).forEach(([teacherId, classes]) => {
        const classMap = {};
        classes.forEach(({ type, classIndex, turmaIndex }) => {
          const key = `${type}-${classIndex}`;
          if (!classMap[key]) {
            classMap[key] = [];
          }
          classMap[key].push({ type, classIndex, turmaIndex });
        });

        Object.values(classMap).forEach(conflictingClasses => {
          if (conflictingClasses.length > 1) {
            const type = conflictingClasses[0].type;
            if (!errors[type][day]) errors[type][day] = [];
            const classTime = conflictingClasses[0].classIndex + 1;
            const turmas = conflictingClasses.map(c => jsonData.turmas[c.type === 'integral' ? 'dia' : 'noite'][c.turmaIndex]).join(', ');
            errors[type][day].push({
              type: 'conflictingClasses',
              message: `Professor ${teacherId} tem mais de uma aula ao mesmo tempo no dia ${jsonData.dias[day]}, horário ${classTime} (${type === 'integral' ? 'Integral' : 'Noturno'}). Turmas: ${turmas}`,
              professor: teacherId,
              horario: classTime,
              turmas: turmas.split(', ')
            });
          }
        });
      });

      // Check for teachers with more than 8 classes in a day (combined integral and noturno)
      Object.entries(teacherCounts).forEach(([teacherId, count]) => {
        if (count > 8) {
          if (!errors.integral[day]) errors.integral[day] = [];
          errors.integral[day].push({
            type: 'excessiveClasses',
            message: `Professor ${teacherId} tem ${count} aulas (mais de 8) no dia ${jsonData.dias[day]} (combinando Integral e Noturno)`,
            professor: teacherId,
            count: count
          });
        }
      });
    }

    // Check for teachers appearing in 4 or more days
    Object.entries(teacherDayAppearances).forEach(([teacherId, days]) => {
      if (days.size >= 4) {
        if (!warnings.integral['weekWarning']) warnings.integral['weekWarning'] = [];
        warnings.integral['weekWarning'].push({
          type: 'weekWarning',
          message: `Professor ${teacherId} aparece em ${days.size} dias na semana`,
          professor: teacherId,
          dayCount: days.size
        });
      }
    });

    // Check for non-consecutive classes
    Object.entries(teacherClassSequences).forEach(([teacherId, daySequences]) => {
      Object.entries(daySequences).forEach(([day, sequences]) => {
        const sortedSequences = sequences.sort((a, b) => {
          if (a.type !== b.type) return a.type === 'integral' ? -1 : 1;
          return a.classIndex - b.classIndex;
        });
        for (let i = 1; i < sortedSequences.length; i++) {
          const prev = sortedSequences[i - 1];
          const curr = sortedSequences[i];
          if (prev.type === curr.type && curr.classIndex - prev.classIndex > 1) {
            if (!warnings.integral['classSequence']) warnings.integral['classSequence'] = [];
            warnings.integral['classSequence'].push({
              type: 'nonConsecutiveClasses',
              message: `Professor ${teacherId} tem aulas não consecutivas no dia ${jsonData.dias[parseInt(day)]}: ${prev.classIndex + 1} e ${curr.classIndex + 1} (${prev.type === 'integral' ? 'Integral' : 'Noturno'})`,
              professor: teacherId,
              day: parseInt(day),
              firstClass: prev.classIndex + 1,
              secondClass: curr.classIndex + 1,
              scheduleType: prev.type
            });
          }
        }
      });
    });

    return { errors, warnings };
  }
}
//DISPLAY

function displayAnalysisResults(results) {
  const sideContainer = document.querySelector('.side-container');
  const sideContainerContent = document.querySelector('.side-container-content');
  if (!sideContainer || !sideContainerContent) return;

  // Store the current state of collapsible sections
  const collapsibleStates = {};
  sideContainerContent.querySelectorAll('.collapsible-section').forEach(section => {
    const header = section.querySelector('.collapsible-header');
    const content = section.querySelector('.collapsible-content');
    collapsibleStates[header.textContent] = content.style.maxHeight ? true : false;
  });

  // Clear previous analysis results
  sideContainerContent.innerHTML = '';

  const dayNames = ['Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'];

  const createCollapsibleSection = (title, content) => {
    const section = document.createElement('div');
    section.className = 'collapsible-section';
    const isActive = collapsibleStates[title] ? 'collapsible-active' : '';
    const maxHeight = collapsibleStates[title] ? 'style="max-height: none;"' : '';
    section.innerHTML = `
      <h3 class="collapsible-header ${isActive}">${title}</h3>
      <div class="collapsible-content" ${maxHeight}>
        <div class="collapsible-inner">${content}</div>
      </div>
    `;
    return section;
  };

  const createDayButton = (scheduleType, day, issueType) => {
    const dayName = dayNames[day];
    return `<button class="day-button" data-schedule-type="${scheduleType}" data-day="${day}" data-issue-type="${issueType}">${dayName}</button>`;
  };

  const displayIssues = (issues, type) => {
    const typeTitle = type === 'errors' ? 'Erros' : 'Avisos';

    const groupedIssues = {
      conflictingClasses: [],
      excessiveClasses: [],
      weekWarnings: [],
      nonConsecutiveClasses: [],
      emptyHours: []
    };

    Object.entries(issues).forEach(([scheduleType, scheduleIssues]) => {
      Object.entries(scheduleIssues).forEach(([day, dayIssues]) => {
        if (Array.isArray(dayIssues)) {
          dayIssues.forEach(issue => {
            if (issue.type === 'weekWarning' || issue.type === 'nonConsecutiveClasses') {
              groupedIssues[issue.type === 'weekWarning' ? 'weekWarnings' : 'nonConsecutiveClasses'].push(issue);
            } else {
              groupedIssues[issue.type].push({ ...issue, scheduleType, day: parseInt(day) });
            }
          });
        }
      });
    });

    Object.entries(groupedIssues).forEach(([issueType, issueList]) => {
      if (issueList.length > 0) {
        let issueContent = '<ul>';
        issueList.forEach(issue => {
          let dayButton = '';
          if (issue.day !== undefined) {
            dayButton = createDayButton(issue.scheduleType, issue.day, issueType);
          }

          issueContent += `<li>${issue.message} ${dayButton}</li>`;
        });
        issueContent += '</ul>';

        const issueTitle = {
          conflictingClasses: 'Aulas Conflitantes',
          excessiveClasses: 'Excesso de Aulas',
          weekWarnings: 'Avisos Semanais',
          nonConsecutiveClasses: 'Aulas Não Consecutivas',
          emptyHours: 'Horários Vazios'
        }[issueType];

        sideContainerContent.appendChild(createCollapsibleSection(`${typeTitle}: ${issueTitle}`, issueContent));
      }
    });
  };

  displayIssues(results.errors, 'errors');
  displayIssues(results.warnings, 'warnings');

  // Make sections collapsible
  const collapsibles = sideContainerContent.querySelectorAll('.collapsible-header');
  collapsibles.forEach(item => {
    item.addEventListener('click', function () {
      this.classList.toggle('collapsible-active');
      const content = this.nextElementSibling;
      if (content.style.maxHeight) {
        content.style.maxHeight = null;
      } else {
        content.style.maxHeight = content.scrollHeight + "px";
      }
    });
  });

  // Add event listeners to day buttons
  const dayButtons = sideContainerContent.querySelectorAll('.day-button');
  dayButtons.forEach(button => {
    button.addEventListener('click', () => {
      const scheduleType = button.dataset.scheduleType;
      const day = parseInt(button.dataset.day);
      const issueType = button.dataset.issueType;
      navigateToIssue(scheduleType, day, issueType);
    });
  });

  handleSideContainerVisibility();
}
function navigateToIssue(scheduleType, day, issueType) {
  // Set the current carousel index to the correct day
  currentCarouselIndex = day;

  // Determine which view to use
  let targetView;
  if (scheduleType === 'integral') {
    targetView = 'dia';
  } else if (scheduleType === 'noturno') {
    targetView = 'noite';
  }

  // If we're in full view or tower view, stay there
  if (isFullView) {
    targetView = 'full-view';
  } else if (isTowerView) {
    targetView = 'tower-view';
  }

  // Switch to the correct view
  switchToView(targetView);

  // Update carousel position
  if (targetView === 'tower-view') {
    towerCarouselIndex = getTowerViewIndex(scheduleType);
    updateTowerCarouselPosition();
  } else {
    updateCarouselPosition();
  }

  // Highlight the cells with issues
  highlightIssueCells(scheduleType, day, issueType);
}
function switchView(newView) {
  updateViewState({
    activeTab: newView,
    isFullView: newView === 'full-view',
    isTowerView: newView === 'tower-view'
  });
}
function switchToView(view) {
  activeTab = view;
  currentViewState.activeTab = view;
  updateTabVisibility();
  handleSideContainerVisibility();
  adjustCarouselSize();

  // Update toggle states
  const fullViewToggle = document.getElementById('fullViewToggle');
  const towerViewToggle = document.getElementById('towerViewToggle');
  const dianoiteToggle = document.getElementById('dianoiteToggle');

  fullViewToggle.classList.toggle('active', view === 'full-view');
  towerViewToggle.classList.toggle('active', view === 'tower-view');
  dianoiteToggle.checked = view === 'noite';
}

function getTowerViewIndex(scheduleType) {
  if (scheduleType === 'integral') {
    return 0; // Dia
  } else if (scheduleType === 'noturno') {
    return 2; // Noite
  }
  return 1; // Tarde (default)
}

function highlightIssueCells(scheduleType, day, issueType) {
  const dayAbbreviations = ['SEG', 'TER', 'QUA', 'QUI', 'SEX', 'SAB'];
  const dayAbbr = dayAbbreviations[day];
  const prefix = scheduleType === 'integral' ? 'I' : 'N';

  let cellsToHighlight = [];

  switch (issueType) {
    case 'conflictingClasses':
      const teacherClasses = {};
      scheduleData[scheduleType].forEach((turmaSchedule, turmaIndex) => {
        const dayStart = day * (scheduleType === 'integral' ? 10 : 4);
        const dayEnd = dayStart + (scheduleType === 'integral' ? 10 : 4);
        for (let classIndex = dayStart; classIndex < dayEnd; classIndex++) {
          const teacherId = turmaSchedule[classIndex];
          if (teacherId && teacherId.trim() !== '') {
            if (!teacherClasses[teacherId]) {
              teacherClasses[teacherId] = [];
            }
            teacherClasses[teacherId].push({ turmaIndex, classIndex: classIndex - dayStart });
          }
        }
      });

      Object.entries(teacherClasses).forEach(([teacherId, classes]) => {
        if (classes.length > 1) {
          const conflictingClasses = classes.filter((classA, indexA) =>
            classes.some((classB, indexB) =>
              indexA !== indexB && classA.classIndex === classB.classIndex
            )
          );
          conflictingClasses.forEach(({ turmaIndex, classIndex }) => {
            cellsToHighlight.push(`${dayAbbr}${prefix}${turmaIndex.toString().padStart(3, '0')}-${classIndex.toString().padStart(3, '0')}`);
          });
        }
      });
      break;

    case 'emptyHours':
      if (scheduleType === 'integral') {
        scheduleData.integral.forEach((turmaSchedule, turmaIndex) => {
          const dayStart = day * 10;
          const dayEnd = dayStart + 6; // Only check first 6 hours
          for (let classIndex = dayStart; classIndex < dayEnd; classIndex++) {
            const teacherId = turmaSchedule[classIndex];
            if (!teacherId || teacherId.trim() === '') {
              cellsToHighlight.push(`${dayAbbr}${prefix}${turmaIndex.toString().padStart(3, '0')}-${(classIndex - dayStart).toString().padStart(3, '0')}`);
            }
          }
        });
      }
      break;
    case 'nonConsecutiveClasses':
      const teacherSequences = {};
      scheduleData[scheduleType].forEach((turmaSchedule, turmaIndex) => {
        const dayStart = day * (scheduleType === 'integral' ? 10 : 4);
        const dayEnd = dayStart + (scheduleType === 'integral' ? 10 : 4);
        const daySchedule = turmaSchedule.slice(dayStart, dayEnd);
        daySchedule.forEach((teacherId, classIndex) => {
          if (teacherId && teacherId.trim() !== '') {
            if (!teacherSequences[teacherId]) {
              teacherSequences[teacherId] = [];
            }
            teacherSequences[teacherId].push({ turmaIndex, classIndex });
          }
        });
      });

      Object.values(teacherSequences).forEach(sequence => {
        if (sequence.length > 1) {
          for (let i = 1; i < sequence.length; i++) {
            if (sequence[i].classIndex - sequence[i - 1].classIndex > 1) {
              cellsToHighlight.push(`${dayAbbr}${prefix}${sequence[i - 1].turmaIndex.toString().padStart(3, '0')}-${sequence[i - 1].classIndex.toString().padStart(3, '0')}`);
              cellsToHighlight.push(`${dayAbbr}${prefix}${sequence[i].turmaIndex.toString().padStart(3, '0')}-${sequence[i].classIndex.toString().padStart(3, '0')}`);
            }
          }
        }
      });
      break;
  }

  // Apply highlighting to all views
  const views = ['S', 'F', 'T']; // Standard, Full, Tower
  cellsToHighlight.forEach(cellId => {
    views.forEach(view => {
      const fullCellId = `${cellId}${view}`;
      const cell = document.querySelector(`td[id="${fullCellId}"]`);
      if (cell && cell.textContent.trim() !== '') {
        cell.classList.add(issueType === 'emptyHours' ? 'highlighted-warning' : 'highlighted-error');
      }
    });
  });
}
