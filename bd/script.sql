CREATE TYPE dias_semana AS ENUM ('Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado');

/*Diz qual como está organizada a turma para aquela atribuição*/
CREATE TYPE sd_descricao AS ENUM ('Turma Única', 'Turma A', 'Turma B', 'Turma C','Laboratório - Turma A', 'Laboratório - Turma B');

CREATE SEQUENCE id_atribuicao;

/*Tabela para Usuarios(professores e administradores)*/
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    adm BOOLEAN DEFAULT FALSE NOT NULL,
    prof BOOLEAN DEFAULT TRUE NOT NULL
);

/*Tabelas para salvar a disponibilidade do professor*/
CREATE TABLE horario (
    id SERIAL PRIMARY KEY,
    dia dias_semana NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL
);

CREATE TABLE disponibilidade (
    id SERIAL PRIMARY KEY,
    id_professor INTEGER NOT NULL,
    id_horario INTEGER NOT NULL,
    
    FOREIGN KEY (id_professor) REFERENCES usuario(id) ON DELETE CASCADE, 
    FOREIGN KEY (id_horario) REFERENCES horario(id) ON DELETE CASCADE
);

/*Tabelas que são parte da atribuição*/
CREATE TABLE disciplina (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE turma (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE lab (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE atribuicao (
    id INT PRIMARY KEY NOT NULL DEFAULT NEXTVAL('id_atribuicao'), 
    ano INTEGER NOT NULL,
    qntd_aulas INTEGER NOT NULL,
    qntd_laboratorios INTEGER NOT NULL,
    sd_descricao sd_descricao NOT NULL,
    id_disciplina INTEGER NOT NULL,

    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id) ON DELETE CASCADE
);

CREATE TABLE atribuicaoCasada (
    id INT PRIMARY KEY NOT NULL DEFAULT NEXTVAL('id_atribuicao'),
    qntd_aulas_casada INTEGER NOT NULL
);

/*Normalizações para relações n para n*/
CREATE TABLE atribuicao_atribuicaoCasada (
    id SERIAL PRIMARY KEY,
    id_atribuicao INTEGER NOT NULL,
    id_atribuicaoCasada INTEGER NOT NULL,

    FOREIGN KEY (id_atribuicao) REFERENCES atribuicao(id) ON DELETE CASCADE,
    FOREIGN KEY (id_atribuicaoCasada) REFERENCES atribuicaoCasada(id) ON DELETE CASCADE
);

CREATE TABLE atribuicao_turma (
    id SERIAL PRIMARY KEY,
    id_atribuicao INTEGER NOT NULL,
    id_turma INTEGER NOT NULL,

    FOREIGN KEY (id_atribuicao) REFERENCES atribuicao(id) ON DELETE CASCADE,
    FOREIGN KEY (id_turma) REFERENCES turma(id) ON DELETE CASCADE
);

CREATE TABLE atribuicao_lab (
    id SERIAL PRIMARY KEY,
    id_atribuicao INTEGER NOT NULL,
    id_lab INTEGER NOT NULL,

    FOREIGN KEY (id_atribuicao) REFERENCES atribuicao(id) ON DELETE CASCADE,
    FOREIGN KEY (id_lab) REFERENCES lab(id) ON DELETE CASCADE
);

CREATE TABLE atribuicao_usuario (
    id SERIAL PRIMARY KEY,
    id_atribuicao INTEGER NOT NULL,
    id_professor INTEGER NOT NULL,

    FOREIGN KEY (id_professor) REFERENCES usuario(id) ON DELETE CASCADE,
    FOREIGN KEY (id_atribuicao) REFERENCES atribuicao(id) ON DELETE CASCADE
);