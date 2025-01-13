document.addEventListener('DOMContentLoaded', () => {
    const buttons = document.querySelectorAll('.buttons button');
    const readButtons = document.querySelectorAll('.read-buttons button');
    const formContainer = document.getElementById('formContainer');
    const modal = document.getElementById('modal');
    const modalForm = document.getElementById('modalForm');
    const closeBtn = document.getElementsByClassName('close')[0];
    const tableContainer = document.getElementById('tableContainer');

    const jsonStructures = {
        Atribuicao: {
            id: null,
            ano: null,
            qntd_aulas: null,
            qntd_laboratorios: null,
            sd_descricao: null,
            id_disciplina: null,
            turma_nome: null,
            lab_nome: null,
            usuario_nome: null
        },
        AtribuicaoCasada: {
            id_atribuicao: null,
            id_atribuicao_casada: null,
            qntd_aulas_casada: null
        },
        Disciplina: {
            id: null,
            nome: null
        },
        Professor: {
            id: null,
            nome: null,
            email: null,
            senha: null,
            adm: null,
            prof: null
        },
        Lab: {
            id: null,
            nome: null
        }
    };

    let currentTableType = null;
    let previewData = {};

    // Update modal styles to make it larger and split into two parts
    modal.style.justifyContent = 'center';
    modal.style.alignItems = 'center';
    document.querySelector('.modal-content').style.width = '90%';
    document.querySelector('.modal-content').style.height = '90%';
    document.querySelector('.modal-content').style.display = 'flex';
    document.querySelector('.modal-content').style.flexDirection = 'row';
    document.querySelector('.modal-content').style.overflowY = 'auto';

    // Create left and right containers
    const leftContainer = document.createElement('div');
    leftContainer.style.width = '50%';
    leftContainer.style.padding = '20px';
    leftContainer.style.borderRight = '1px solid #ccc';

    const rightContainer = document.createElement('div');
    rightContainer.style.width = '50%';
    rightContainer.style.padding = '20px';
    rightContainer.id = 'rightContainer';

    document.querySelector('.modal-content').appendChild(leftContainer);
    document.querySelector('.modal-content').appendChild(rightContainer);

    buttons.forEach(button => {
        button.addEventListener('click', () => {
            const type = button.id.replace('btn', '');
            currentTableType = type;
            createForm(type);
            modal.style.display = 'flex';
            reReadTable(type, true);
        });
    });

    readButtons.forEach(button => {
        button.addEventListener('click', () => {
            const type = button.id.replace('read', '');
            currentTableType = type; // Update currentTableType when reading
            reReadTable(type, false);
        });
    });

    closeBtn.onclick = () => {
        modal.style.display = 'none';
    };

    window.onclick = (event) => {
        if (event.target == modal) {
            modal.style.display = 'none';
        }
    };

    function createTable(data, isReadOnly = false) {
        if (!currentTableType) {
            console.warn('currentTableType is not set. Defaulting to non-Professor view.');
        }
        if (!Array.isArray(data) || data.length === 0) {
            const noDataMessage = document.createElement('p');
            noDataMessage.textContent = 'No data available';
            return noDataMessage;
        }

        const table = document.createElement('table');
        table.style.width = '100%';
        table.style.borderCollapse = 'collapse';
        table.style.marginTop = '20px';

        // Create table header
        const thead = document.createElement('thead');
        const headerRow = document.createElement('tr');
        Object.keys(data[0]).forEach(key => {
            const th = document.createElement('th');
            th.textContent = key.charAt(0).toUpperCase() + key.slice(1);
            th.style.border = '1px solid #ddd';
            th.style.padding = '8px';
            th.style.backgroundColor = '#f2f2f2';
            headerRow.appendChild(th);
        });

        if (!isReadOnly) {
            // Add header for Actions column
            const actionTh = document.createElement('th');
            actionTh.textContent = 'Actions';
            actionTh.style.border = '1px solid #ddd';
            actionTh.style.padding = '8px';
            actionTh.style.backgroundColor = '#f2f2f2';
            headerRow.appendChild(actionTh);
        }

        thead.appendChild(headerRow);
        table.appendChild(thead);

        // Create table body
        const tbody = document.createElement('tbody');
        data.forEach((item, rowIndex) => {
            const row = document.createElement('tr');
            Object.entries(item).forEach(([key, value], colIndex) => {
                const td = document.createElement('td');
                td.textContent = value !== null ? value : '';
                td.style.border = '1px solid #ddd';
                td.style.padding = '8px';
                td.style.backgroundColor = '#f2f2f2';

                const rowNum = (rowIndex + 1).toString().padStart(3, '0');
                const colNum = (colIndex + 1).toString().padStart(2, '0');
                td.id = `${rowNum}${colNum}`;

                row.appendChild(td);
            });

            if (!isReadOnly) {
                // Add Actions column
                const actionTd = document.createElement('td');
                actionTd.style.border = '1px solid #ddd';
                actionTd.style.padding = '8px';
                actionTd.style.backgroundColor = '#f2f2f2';

                if (currentTableType === 'Professor') {
                    // For Professor view, only add Delete button
                    const deleteButton = document.createElement('button');
                    deleteButton.textContent = 'Excluir';
                    deleteButton.onclick = () => deleteRow(item);
                    actionTd.appendChild(deleteButton);
                } else {
                    // For other views, add both Edit and Delete buttons
                    const editButton = document.createElement('button');
                    editButton.textContent = 'Edição';
                    editButton.onclick = () => editRow(item);

                    const deleteButton = document.createElement('button');
                    deleteButton.textContent = 'Excluir';
                    deleteButton.onclick = () => deleteRow(item);

                    actionTd.appendChild(editButton);
                    actionTd.appendChild(deleteButton);
                }

                row.appendChild(actionTd);
            }

            tbody.appendChild(row);
        });

        table.appendChild(tbody);

        return table;
    }


    function editRow(rowData) {
        const type = determineType(rowData);
        if (type !== 'Professor') {
            createForm(type, rowData);
            modal.style.display = 'flex';
        } else {
            alert('Editar professores não é permitido.');
        }
    }

    function deleteRow(rowData) {
        const type = determineType(rowData);
        if (confirm('Você tem certeza de que deseja excluir este item?')) {
            handleSubmit(type, 'delete', rowData);
        }
    }



    function determineType(rowData) {
        if ('ano' in rowData && 'qntd_aulas' in rowData) {
            console.log('Detected type: Atribuicao');
            return 'Atribuicao';
        }
        if ('qntd_aulas_casada' in rowData && 'id_atribuicao_casada' in rowData) {
            console.log('Detected type: AtribuicaoCasada');
            return 'AtribuicaoCasada';
        }
        if ('nome' in rowData && !('email' in rowData)) {
            const type = currentTableType === 'Lab' ? 'Lab' : 'Disciplina';
            console.log(`Detected type: ${type}`);
            return type;
        }
        if ('email' in rowData) {
            console.log('Detected type: Professor');
            return 'Professor';
        }
        console.log('Detected type: Unknown');
        return 'AtribuicaoCasada';
    }

function createForm(type, data = null) {
    currentTableType = type; // Set the currentTableType when creating a form
    const structure = jsonStructures[type];
    let formHtml = `<h2>Formulário ${type}</h2><form id="${type.toLowerCase()}Form" data-type="${type}">`;
    for (const key in structure) {
        const value = data ? data[key] : '';
        let isDisabled = key === 'id';
        let inputType = 'text';
        let inputHtml = '';

        // Special handling for AtribuicaoCasada
        if (type === 'AtribuicaoCasada') {
            if (key === 'id_atribuicao' || key === 'id_atribuicao_casada') {
                inputType = 'number';
            }
        }

            if (type === 'Professor') {
                if (key === 'senha' && data !== null) {
                    isDisabled = true;
                } else if (key === 'adm' || key === 'prof') {
                    inputType = 'checkbox';
                    inputHtml = `
                        <input type="${inputType}" id="${key}" name="${key}" ${value === 'true' || value === true ? 'checked' : ''} ${isDisabled ? 'disabled' : ''}>
                    `;
                }
            }

           
        if (!inputHtml) {
            if (key === 'id') {
                inputHtml = `
                    <input type="hidden" id="${key}" name="${key}" value="${value}">
                    <span>${value}</span>
                `;
            } else {
                inputHtml = `
                    <input type="${inputType}" id="${key}" name="${key}" value="${value}" ${isDisabled ? 'disabled' : ''}>
                `;
            }
        }

        formHtml += `
            <div>
                <label for="${key}">${key.charAt(0).toUpperCase() + key.slice(1)}:</label>
                ${inputHtml}
            </div>
        `;
    }

    formHtml += `
        <button type="submit" data-action="${data ? 'update' : 'create'}">${data ? 'Atualizar' : 'Criar'}</button>
    `;

    formHtml += `</form>`;

    leftContainer.innerHTML = formHtml;

    const form = document.getElementById(`${type.toLowerCase()}Form`);
    form.addEventListener('submit', (e) => {
        e.preventDefault();
        handleSubmit(type, data ? 'update' : 'create', data);
    });

    // Add event listeners for real-time preview updates
    const inputs = form.querySelectorAll('input');
    inputs.forEach(input => {
        input.addEventListener('input', () => updatePreview(type));
    });

    // Initial preview render
    updatePreview(type);
}


    function updatePreview(type) {
        if (!type) {
            console.error('Table type is undefined in updatePreview');
            return;
        }

        const form = document.getElementById(`${type.toLowerCase()}Form`);
        if (!form) {
            console.error(`Form not found for type: ${type}`);
            return;
        }

        const formData = new FormData(form);
        previewData = {};
        formData.forEach((value, key) => {
            previewData[key] = value;
        });
        renderPreviewTable();
    }

    function renderPreviewTable() {
        const previewContainer = document.getElementById('previewContainer') || createPreviewContainer();
        if (Object.keys(previewData).length === 0) {
            previewContainer.innerHTML = '<p>Sem previsão disponível</p>';
            return;
        }

        let tableHtml = '<table style="width:100%; border-collapse: collapse; margin-top: 20px; margin-bottom:20px;">';
        tableHtml += '<thead><tr>';
        for (const key in previewData) {
            tableHtml += `<th style="border: 1px solid #ddd; padding: 8px; background-color: #f2f2f2;">${key}</th>`;
        }
        tableHtml += '</tr></thead><tbody><tr>';
        for (const value of Object.values(previewData)) {
            tableHtml += `<td style="border: 1px solid #ddd; padding: 8px;">${value}</td>`;
        }
        tableHtml += '</tr></tbody></table>';

        previewContainer.innerHTML = '<h3>Previsão</h3>' + tableHtml;
    }

    function createPreviewContainer() {
        const container = document.createElement('div');
        container.id = 'previewContainer';
        leftContainer.appendChild(container);
        return container;
    }


    function handleSubmit(type, action, existingData = null) {
        const form = document.getElementById(`${type.toLowerCase()}Form`);
        let jsonData = {};

        if (action !== 'read') {
            if (form) {
                const formElements = form.elements;

                for (let i = 0; i < formElements.length; i++) {
                    const element = formElements[i];
                    if (element.name) {
                        if (element.type === 'checkbox') {
                            jsonData[element.name] = element.checked;
                        } else if (element.type !== 'hidden' || element.name === 'id') {
                            jsonData[element.name] = element.value;
                        }
                    }
                }
            }

            // For delete action, use the existing data
            if (action === 'delete' && existingData) {
                jsonData = { ...existingData };
            }

            // Ensure id is included for update and delete actions
            if ((action === 'update' || action === 'delete') && existingData && existingData.id) {
                jsonData.id = existingData.id;
            }
        }

        // Use the currentTableType to determine the type
        const tableType = currentTableType || type;

        let jsonFinalReturn = {
            action: action,
            table: tableType,
            response: jsonData
        };
        jsonFinalReturn = replaceEmptyWithNull(jsonFinalReturn);
        console.log('Sending data:', JSON.stringify(jsonFinalReturn, null, 2));

        fetch('/projetoscti26/dados', {
            method: 'POST',
            body: new URLSearchParams({
                jsonData: JSON.stringify(jsonFinalReturn)
            }),
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                return response.text();
            })
            .then(text => {
                try {
                    return JSON.parse(text);
                } catch (e) {
                    console.error('Failed to parse JSON:', e);
                    return text;
                }
            })
            .then(data => {
                console.log(data);
                if (typeof data === 'object') {
                    console.log('Server response (Parsed JSON):', data);
                } else {
                    console.log('Server response (Raw - Invalid JSON):', data);
                }

                reReadTable(type);

                // Extra reload if the table type is Atribuicao
                if (tableType === 'Atribuicao') {
                    reReadTable('Atribuicao');
                }
            })
            .catch(error => {
                console.error('Error:', error.message);
            });

        modal.style.display = 'none';
    }

    function escapeHtml(unsafe) {
        return unsafe
            .replace(/&/g, "&amp;")
            .replace(/</g, "&lt;")
            .replace(/>/g, "&gt;")
            .replace(/"/g, "&quot;")
            .replace(/'/g, "&#039;");
    }

    function loadServerResponse(data, isReadOnly = false) {
        const container = isReadOnly ? rightContainer : tableContainer;
        if (container) {
            container.innerHTML = '';
            const tableContent = createTable(data, isReadOnly);
            container.appendChild(tableContent);
        } else {
            console.error('Container not found');
        }
    }

    function reReadTable(type, isReadOnly = false) {
        let jsonFinalReturn = {
            action: 'read',
            table: type,
            response: {}
        };

        fetch('/projetoscti26/dados', {
            method: 'POST',
            body: new URLSearchParams({
                jsonData: JSON.stringify(jsonFinalReturn)
            }),
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        })
            .then(response => response.json())
            .then(data => {
                if (Array.isArray(data)) {
                    loadServerResponse(data, isReadOnly);
                    if (!isReadOnly) {
                        tableContainer.scrollIntoView({ behavior: 'smooth' });
                    }
                } else {
                    console.error('Invalid data format received from server');
                }
            })
            .catch(error => {
                console.error('Error re-reading table:', error);
            });
    }

    // Initial table load
    reReadTable("Disciplina");
});
function replaceEmptyWithNull(obj) {
    if (typeof obj !== 'object' || obj === null) {
      return obj === "" ? null : obj;
    }
  
    if (Array.isArray(obj)) {
      return obj.map(replaceEmptyWithNull);
    }
  
    return Object.fromEntries(
      Object.entries(obj).map(([key, value]) => [key, replaceEmptyWithNull(value)])
    );
}
