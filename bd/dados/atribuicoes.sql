-- Linha 1
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Espanhol Avançado'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (1, (SELECT id FROM usuario WHERE nome = 'Luis Alberto Llontop Vásquez'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (1, (SELECT id FROM turma WHERE nome = 'DEL'));

-- Linha 2
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Espanhol Básico T1'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (2, (SELECT id FROM usuario WHERE nome = 'Luis Alberto Llontop Vásquez'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (2, (SELECT id FROM turma WHERE nome = 'DEL'));

-- Linha 3
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Espanhol Básico T2'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (3, (SELECT id FROM usuario WHERE nome = 'Luis Alberto Llontop Vásquez'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (3, (SELECT id FROM turma WHERE nome = 'DEL'));

-- Linha 4
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Espanhol Intermediário T1'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (4, (SELECT id FROM usuario WHERE nome = 'Luis Alberto Llontop Vásquez'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (4, (SELECT id FROM turma WHERE nome = 'DEL'));

-- Linha 5
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Espanhol Intermediário T2'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (5, (SELECT id FROM usuario WHERE nome = 'Luis Alberto Llontop Vásquez'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (5, (SELECT id FROM turma WHERE nome = 'DEL'));

-- Linha 6
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 7, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Eletrotécnica Geral'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (6, (SELECT id FROM usuario WHERE nome = 'Jeferson André Bigheti'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (6, (SELECT id FROM turma WHERE nome = 'ELE1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (6, 7);

-- Linha 7
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Fundamentos da Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (7, (SELECT id FROM usuario WHERE nome = 'Daniel Zarpelão Porcel'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (7, (SELECT id FROM turma WHERE nome = 'ELE1'));

-- Linha 8
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Legislação Aplicada e Ética Profissional'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (8, (SELECT id FROM usuario WHERE nome = 'Maurício Augusto de Souza Ruiz'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (8, (SELECT id FROM turma WHERE nome = 'ELE1'));

-- Linha 9
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Normas Técnicas e de Segurança'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (9, (SELECT id FROM usuario WHERE nome = 'Paulo Rogério Pichelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (9, (SELECT id FROM turma WHERE nome = 'ELE1'));

-- Linha 10
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 5, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Eletrônica Básica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (10, (SELECT id FROM usuario WHERE nome = 'José Eduardo Alves de Oliveira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (10, (SELECT id FROM turma WHERE nome = 'ELE2'));

-- Linha 11
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Eletrotécnica Geral'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (11, (SELECT id FROM usuario WHERE nome = 'Francisco Paez Neto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (11, (SELECT id FROM turma WHERE nome = 'ELE2'));

-- Linha 12
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (12, (SELECT id FROM usuario WHERE nome = 'Antonio José Rosa Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (12, (SELECT id FROM turma WHERE nome = 'ELE2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (12, 5);

-- Linha 13
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (13, (SELECT id FROM usuario WHERE nome = 'Francisco Paez Neto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (13, (SELECT id FROM turma WHERE nome = 'ELE2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (13, 5);

-- Linha 14
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Eletrônica Básica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (14, (SELECT id FROM usuario WHERE nome = 'Jeferson André Bigheti'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (14, (SELECT id FROM turma WHERE nome = 'ELE2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (14, 7);

-- Linha 15
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Redação Técnica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (15, (SELECT id FROM usuario WHERE nome = 'Adriana da Silva Reghine Giorjão'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (15, (SELECT id FROM turma WHERE nome = 'ELE2'));

-- Linha 16
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sistemas Digitais II'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (16, (SELECT id FROM usuario WHERE nome = 'Marcelo Antonio Minorello'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (16, (SELECT id FROM turma WHERE nome = 'ELE2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (16, 8);

-- Linha 17
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Eletrônica Industrial'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (17, (SELECT id FROM usuario WHERE nome = 'Jair Hilário Zorzi Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (17, (SELECT id FROM turma WHERE nome = 'ELE3'));

-- Linha 18
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Gestão de Negócios I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (18, (SELECT id FROM usuario WHERE nome = 'Jovita Mercedes Hojas Baenas'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (18, (SELECT id FROM turma WHERE nome = 'ELE3'));

-- Linha 19
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Inglês Técnico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (19, (SELECT id FROM usuario WHERE nome = 'Camilla Celeste Koga Campos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (19, (SELECT id FROM turma WHERE nome = 'ELE3'));

-- Linha 20
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Eletrônica Industrial'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (20, (SELECT id FROM usuario WHERE nome = 'Jair Hilário Zorzi Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (20, (SELECT id FROM turma WHERE nome = 'ELE3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (20, 9);

-- Linha 21
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 2, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Sistemas Microprocessados'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (21, (SELECT id FROM usuario WHERE nome = 'Claudio Martius Giaretta Doria Vieira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (21, (SELECT id FROM turma WHERE nome = 'ELE3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (21, 7);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (21, 8);

-- Linha 22
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sistemas Microprocessados'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (22, (SELECT id FROM usuario WHERE nome = 'Claudio Martius Giaretta Doria Vieira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (22, (SELECT id FROM turma WHERE nome = 'ELE3'));

-- Linha 23
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Telecomunicações'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (23, (SELECT id FROM usuario WHERE nome = 'Antonio José Rosa Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (23, (SELECT id FROM turma WHERE nome = 'ELE3'));

-- Linha 24
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Arte'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (24, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (24, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 25
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (25, (SELECT id FROM usuario WHERE nome = 'João Alberto Zago Bevenuto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (25, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 26
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Educação Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (26, (SELECT id FROM usuario WHERE nome = 'Elvis de Souza Malta'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (26, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 27
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 7, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Eletrotécnica Geral'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (27, (SELECT id FROM usuario WHERE nome = 'Giovanni Silva Tek'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (27, (SELECT id FROM turma WHERE nome = 'ELI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (27, 7);

-- Linha 28
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (28, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (28, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 29
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (29, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (29, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 30
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Fundamentos da Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (30, (SELECT id FROM usuario WHERE nome = 'Ricardo Pessoa dos Santos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (30, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 31
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (31, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (31, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 32
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (32, (SELECT id FROM usuario WHERE nome = 'Christine Vieira Da Maia Areias'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (32, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 33
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Legislação Aplicada e Ética Profissional'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (33, (SELECT id FROM usuario WHERE nome = 'Maurício Augusto de Souza Ruiz'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (33, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 34
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Inglesa'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (34, (SELECT id FROM usuario WHERE nome = 'Maria Cândida Correa'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (34, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 35
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (35, (SELECT id FROM usuario WHERE nome = 'Maria Regina Momesso'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (35, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 36
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (36, (SELECT id FROM usuario WHERE nome = 'Ricardo Pessoa dos Santos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (36, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 37
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Normas Técnicas e de Segurança'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (37, (SELECT id FROM usuario WHERE nome = 'Paulo Rogério Pichelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (37, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 38
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (38, (SELECT id FROM usuario WHERE nome = 'Carmen Regina de Souza'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (38, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 39
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (39, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (39, (SELECT id FROM turma WHERE nome = 'ELI1'));

-- Linha 40
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (40, (SELECT id FROM usuario WHERE nome = 'João Alberto Zago Bevenuto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (40, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 41
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Educação Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (41, (SELECT id FROM usuario WHERE nome = 'Elvis de Souza Malta'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (41, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 42
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 5, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Eletrônica Básica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (42, (SELECT id FROM usuario WHERE nome = 'José Eduardo Alves de Oliveira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (42, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 43
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Eletrotécnica Geral'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (43, (SELECT id FROM usuario WHERE nome = 'Francisco Paez Neto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (43, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 44
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (44, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (44, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 45
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (45, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (45, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 46
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (46, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (46, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 47
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (47, (SELECT id FROM usuario WHERE nome = 'Christine Vieira Da Maia Areias'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (47, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 48
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (48, (SELECT id FROM usuario WHERE nome = 'Antonio José Rosa Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (48, (SELECT id FROM turma WHERE nome = 'ELI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (48, 5);

-- Linha 49
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Inglesa'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (49, (SELECT id FROM usuario WHERE nome = 'Maria Cândida Correa'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (49, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 50
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (50, (SELECT id FROM usuario WHERE nome = 'Maria Regina Momesso'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (50, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 51
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (51, (SELECT id FROM usuario WHERE nome = 'Daniel Zarpelão Porcel'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (51, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 52
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (52, (SELECT id FROM usuario WHERE nome = 'Neivaldo Fernando Strutzel Saggin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (52, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 53
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Redação Técnica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (53, (SELECT id FROM usuario WHERE nome = 'Maria Regina Momesso'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (53, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 54
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (54, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (54, (SELECT id FROM turma WHERE nome = 'ELI2'));

-- Linha 55
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (55, (SELECT id FROM usuario WHERE nome = 'Daniela Mancuso Roda'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (55, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 56
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Eletrônica Industrial'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (56, (SELECT id FROM usuario WHERE nome = 'Jair Hilário Zorzi Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (56, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 57
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (57, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (57, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 58
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (58, (SELECT id FROM usuario WHERE nome = 'Francis Gabriel dos Santos Constante'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (58, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 59
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (59, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (59, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 60
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Gestão de Negócios I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (60, (SELECT id FROM usuario WHERE nome = 'Jovita Mercedes Hojas Baenas'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (60, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 61
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (61, (SELECT id FROM usuario WHERE nome = 'Flávio Henrique Simão Saraiva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (61, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 62
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Inglês Técnico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (62, (SELECT id FROM usuario WHERE nome = 'Camilla Celeste Koga Campos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (62, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 63
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (63, (SELECT id FROM usuario WHERE nome = 'Adriana da Silva Reghine Giorjão'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (63, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 64
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (64, (SELECT id FROM usuario WHERE nome = 'Daniel Zarpelão Porcel'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (64, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 65
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (65, (SELECT id FROM usuario WHERE nome = 'Neivaldo Fernando Strutzel Saggin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (65, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 66
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sistemas Microprocessados'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (66, (SELECT id FROM usuario WHERE nome = 'Claudio Martius Giaretta Doria Vieira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (66, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 67
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (67, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (67, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 68
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Telecomunicações'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (68, (SELECT id FROM usuario WHERE nome = 'Antonio José Rosa Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (68, (SELECT id FROM turma WHERE nome = 'ELI3'));

-- Linha 69
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Elementos de Lógica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (69, (SELECT id FROM usuario WHERE nome = 'Luiz Eduardo Comin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (69, (SELECT id FROM turma WHERE nome = 'INF1'));

-- Linha 70
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Fundamentos da Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (70, (SELECT id FROM usuario WHERE nome = 'Daniel Zarpelão Porcel'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (70, (SELECT id FROM turma WHERE nome = 'INF1'));

-- Linha 71
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (71, (SELECT id FROM usuario WHERE nome = 'José Vieira Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (71, (SELECT id FROM turma WHERE nome = 'INF1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (71, 3);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (71, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (71, 13);

-- Linha 72
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Legislação Aplicada e Ética Profissional'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (72, (SELECT id FROM usuario WHERE nome = 'Maurício Augusto de Souza Ruiz'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (72, (SELECT id FROM turma WHERE nome = 'INF1'));

-- Linha 73
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação I - Python'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (73, (SELECT id FROM usuario WHERE nome = 'Kátia Lívia Zambon'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (73, (SELECT id FROM turma WHERE nome = 'INF1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (73, 3);

-- Linha 74
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (74, (SELECT id FROM usuario WHERE nome = 'Luiz Eduardo Comin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (74, (SELECT id FROM turma WHERE nome = 'INF1'));

-- Linha 75
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Normas Técnicas e de Segurança'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (75, (SELECT id FROM usuario WHERE nome = 'Paulo Rogério Pichelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (75, (SELECT id FROM turma WHERE nome = 'INF1'));

-- Linha 76
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Redação Técnica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (76, (SELECT id FROM usuario WHERE nome = 'Adriana da Silva Reghine Giorjão'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (76, (SELECT id FROM turma WHERE nome = 'INF1'));

-- Linha 77
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Aplicativos I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (77, (SELECT id FROM usuario WHERE nome = 'Rafael Junqueira Martarelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (77, (SELECT id FROM turma WHERE nome = 'INF2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (77, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (77, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (77, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (77, 13);

-- Linha 78
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Banco de Dados'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (78, (SELECT id FROM usuario WHERE nome = 'Debora Barbosa Aires'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (78, (SELECT id FROM turma WHERE nome = 'INF2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (78, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (78, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (78, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (78, 13);

-- Linha 79
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Desenvolvimento Web - PHP'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (79, (SELECT id FROM usuario WHERE nome = 'Marcelo Cabello Peres'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (79, (SELECT id FROM turma WHERE nome = 'INF2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (79, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (79, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (79, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (79, 13);

-- Linha 80
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Gestão de Negócios I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (80, (SELECT id FROM usuario WHERE nome = 'Jovita Mercedes Hojas Baenas'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (80, (SELECT id FROM turma WHERE nome = 'INF2'));

-- Linha 81
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação II - C#'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (81, (SELECT id FROM usuario WHERE nome = 'Vitor Assis Camargo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (81, (SELECT id FROM turma WHERE nome = 'INF2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (81, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (81, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (81, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (81, 13);

-- Linha 82
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação III - JAVA'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (82, (SELECT id FROM usuario WHERE nome = 'Debora Barbosa Aires'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (82, (SELECT id FROM turma WHERE nome = 'INF2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (82, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (82, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (82, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (82, 13);

-- Linha 83
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sistemas Operacionais'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (83, (SELECT id FROM usuario WHERE nome = 'Vitor Assis Camargo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (83, (SELECT id FROM turma WHERE nome = 'INF2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (83, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (83, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (83, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (83, 13);

-- Linha 84
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Análise e Projeto de Sistemas'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (84, (SELECT id FROM usuario WHERE nome = 'Rafael Junqueira Martarelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (84, (SELECT id FROM turma WHERE nome = 'INF3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (84, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (84, 6);

-- Linha 85
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Aplicativos II'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (85, (SELECT id FROM usuario WHERE nome = 'Rafael Junqueira Martarelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (85, (SELECT id FROM turma WHERE nome = 'INF3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (85, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (85, 6);

-- Linha 86
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Gestão de Negócios II'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (86, (SELECT id FROM usuario WHERE nome = 'Jovita Mercedes Hojas Baenas'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (86, (SELECT id FROM turma WHERE nome = 'INF3'));

-- Linha 87
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Inglês Técnico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (87, (SELECT id FROM usuario WHERE nome = 'Camilla Celeste Koga Campos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (87, (SELECT id FROM turma WHERE nome = 'INF3'));

-- Linha 88
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação IV - C#'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (88, (SELECT id FROM usuario WHERE nome = 'André Luiz Ribeiro Bicudo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (88, (SELECT id FROM turma WHERE nome = 'INF3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (88, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (88, 6);

-- Linha 89
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação VI - Java'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (89, (SELECT id FROM usuario WHERE nome = 'Debora Barbosa Aires'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (89, (SELECT id FROM turma WHERE nome = 'INF3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (89, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (89, 6);

-- Linha 90
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação V - PHP'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (90, (SELECT id FROM usuario WHERE nome = 'Marcelo Cabello Peres'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (90, (SELECT id FROM turma WHERE nome = 'INF3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (90, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (90, 6);

-- Linha 91
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Arte'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (91, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (91, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 92
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (92, (SELECT id FROM usuario WHERE nome = 'João Alberto Zago Bevenuto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (92, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 93
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Educação Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (93, (SELECT id FROM usuario WHERE nome = 'Elvis de Souza Malta'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (93, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 94
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Elementos de Lógica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (94, (SELECT id FROM usuario WHERE nome = 'Luiz Eduardo Comin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (94, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 95
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (95, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (95, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 96
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (96, (SELECT id FROM usuario WHERE nome = 'Francis Gabriel dos Santos Constante'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (96, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 97
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Fundamentos da Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (97, (SELECT id FROM usuario WHERE nome = 'Ricardo Pessoa dos Santos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (97, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 98
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (98, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (98, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 99
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (99, (SELECT id FROM usuario WHERE nome = 'Christine Vieira Da Maia Areias'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (99, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 100
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (100, (SELECT id FROM usuario WHERE nome = 'José Vieira Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (100, (SELECT id FROM turma WHERE nome = 'INI1A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (100, 3);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (100, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (100, 13);

-- Linha 101
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Legislação Aplicada e Ética Profissional'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (101, (SELECT id FROM usuario WHERE nome = 'Maurício Augusto de Souza Ruiz'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (101, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 102
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação I - Python'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (102, (SELECT id FROM usuario WHERE nome = 'Kátia Lívia Zambon'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (102, (SELECT id FROM turma WHERE nome = 'INI1A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (102, 3);

-- Linha 103
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Inglesa'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (103, (SELECT id FROM usuario WHERE nome = 'Maria Cândida Correa'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (103, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 104
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (104, (SELECT id FROM usuario WHERE nome = 'Maria Regina Momesso'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (104, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 105
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (105, (SELECT id FROM usuario WHERE nome = 'Ricardo Pessoa dos Santos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (105, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 106
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (106, (SELECT id FROM usuario WHERE nome = 'Luiz Eduardo Comin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (106, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 107
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Normas Técnicas e de Segurança'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (107, (SELECT id FROM usuario WHERE nome = 'Paulo Rogério Pichelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (107, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 108
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (108, (SELECT id FROM usuario WHERE nome = 'Carmen Regina de Souza'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (108, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 109
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Redação Técnica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (109, (SELECT id FROM usuario WHERE nome = 'Maria Regina Momesso'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (109, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 110
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (110, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (110, (SELECT id FROM turma WHERE nome = 'INI1A'));

-- Linha 111
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Arte'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (111, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (111, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 112
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (112, (SELECT id FROM usuario WHERE nome = 'João Alberto Zago Bevenuto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (112, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 113
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Educação Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (113, (SELECT id FROM usuario WHERE nome = 'Elvis de Souza Malta'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (113, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 114
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Elementos de Lógica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (114, (SELECT id FROM usuario WHERE nome = 'Luiz Eduardo Comin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (114, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 115
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (115, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (115, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 116
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (116, (SELECT id FROM usuario WHERE nome = 'Francis Gabriel dos Santos Constante'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (116, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 117
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Fundamentos da Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (117, (SELECT id FROM usuario WHERE nome = 'Ricardo Pessoa dos Santos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (117, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 118
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (118, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (118, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 119
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (119, (SELECT id FROM usuario WHERE nome = 'Christine Vieira Da Maia Areias'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (119, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 120
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (120, (SELECT id FROM usuario WHERE nome = 'José Vieira Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (120, (SELECT id FROM turma WHERE nome = 'INI1B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (120, 3);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (120, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (120, 13);

-- Linha 121
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Legislação Aplicada e Ética Profissional'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (121, (SELECT id FROM usuario WHERE nome = 'Maurício Augusto de Souza Ruiz'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (121, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 122
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação I - Python'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (122, (SELECT id FROM usuario WHERE nome = 'Kátia Lívia Zambon'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (122, (SELECT id FROM turma WHERE nome = 'INI1B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (122, 3);

-- Linha 123
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Inglesa'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (123, (SELECT id FROM usuario WHERE nome = 'Maria Cândida Correa'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (123, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 124
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (124, (SELECT id FROM usuario WHERE nome = 'Maria Regina Momesso'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (124, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 125
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (125, (SELECT id FROM usuario WHERE nome = 'Ricardo Pessoa dos Santos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (125, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 126
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (126, (SELECT id FROM usuario WHERE nome = 'Luiz Eduardo Comin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (126, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 127
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Normas Técnicas e de Segurança'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (127, (SELECT id FROM usuario WHERE nome = 'Paulo Rogério Pichelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (127, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 128
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (128, (SELECT id FROM usuario WHERE nome = 'Carmen Regina de Souza'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (128, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 129
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Redação Técnica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (129, (SELECT id FROM usuario WHERE nome = 'Maria Regina Momesso'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (129, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 130
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (130, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (130, (SELECT id FROM turma WHERE nome = 'INI1B'));

-- Linha 131
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Aplicativos I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (131, (SELECT id FROM usuario WHERE nome = 'Rafael Junqueira Martarelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (131, (SELECT id FROM turma WHERE nome = 'INI2A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (131, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (131, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (131, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (131, 13);

-- Linha 132
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Banco de Dados'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (132, (SELECT id FROM usuario WHERE nome = 'Debora Barbosa Aires'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (132, (SELECT id FROM turma WHERE nome = 'INI2A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (132, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (132, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (132, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (132, 13);

-- Linha 133
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (133, (SELECT id FROM usuario WHERE nome = 'João Alberto Zago Bevenuto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (133, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 134
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Educação Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (134, (SELECT id FROM usuario WHERE nome = 'Elvis de Souza Malta'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (134, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 135
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (135, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (135, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 136
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (136, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (136, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 137
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (137, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (137, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 138
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Gestão de Negócios I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (138, (SELECT id FROM usuario WHERE nome = 'Jovita Mercedes Hojas Baenas'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (138, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 139
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (139, (SELECT id FROM usuario WHERE nome = 'Christine Vieira Da Maia Areias'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (139, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 140
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação III - JAVA'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (140, (SELECT id FROM usuario WHERE nome = 'Debora Barbosa Aires'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (140, (SELECT id FROM turma WHERE nome = 'INI2A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (140, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (140, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (140, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (140, 13);

-- Linha 141
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Inglesa'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (141, (SELECT id FROM usuario WHERE nome = 'Maria Cândida Correa'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (141, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 142
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (142, (SELECT id FROM usuario WHERE nome = 'Maria Regina Momesso'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (142, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 143
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (143, (SELECT id FROM usuario WHERE nome = 'Daniel Zarpelão Porcel'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (143, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 144
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (144, (SELECT id FROM usuario WHERE nome = 'Neivaldo Fernando Strutzel Saggin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (144, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 145
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sistemas Operacionais'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (145, (SELECT id FROM usuario WHERE nome = 'Vitor Assis Camargo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (145, (SELECT id FROM turma WHERE nome = 'INI2A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (145, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (145, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (145, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (145, 13);

-- Linha 146
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (146, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (146, (SELECT id FROM turma WHERE nome = 'INI2A'));

-- Linha 147
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Aplicativos I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (147, (SELECT id FROM usuario WHERE nome = 'Rafael Junqueira Martarelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (147, (SELECT id FROM turma WHERE nome = 'INI2B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (147, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (147, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (147, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (147, 13);

-- Linha 148
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Banco de Dados'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (148, (SELECT id FROM usuario WHERE nome = 'Debora Barbosa Aires'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (148, (SELECT id FROM turma WHERE nome = 'INI2B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (148, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (148, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (148, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (148, 13);

-- Linha 149
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (149, (SELECT id FROM usuario WHERE nome = 'João Alberto Zago Bevenuto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (149, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 150
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Educação Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (150, (SELECT id FROM usuario WHERE nome = 'Elvis de Souza Malta'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (150, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 151
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (151, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (151, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 152
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (152, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (152, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 153
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (153, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (153, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 154
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Gestão de Negócios I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (154, (SELECT id FROM usuario WHERE nome = 'Jovita Mercedes Hojas Baenas'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (154, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 155
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (155, (SELECT id FROM usuario WHERE nome = 'Christine Vieira Da Maia Areias'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (155, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 156
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação III - JAVA'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (156, (SELECT id FROM usuario WHERE nome = 'Debora Barbosa Aires'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (156, (SELECT id FROM turma WHERE nome = 'INI2B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (156, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (156, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (156, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (156, 13);

-- Linha 157
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Inglesa'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (157, (SELECT id FROM usuario WHERE nome = 'Maria Cândida Correa'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (157, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 158
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (158, (SELECT id FROM usuario WHERE nome = 'Maria Regina Momesso'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (158, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 159
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (159, (SELECT id FROM usuario WHERE nome = 'Daniel Zarpelão Porcel'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (159, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 160
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (160, (SELECT id FROM usuario WHERE nome = 'Neivaldo Fernando Strutzel Saggin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (160, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 161
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sistemas Operacionais'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (161, (SELECT id FROM usuario WHERE nome = 'Vitor Assis Camargo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (161, (SELECT id FROM turma WHERE nome = 'INI2B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (161, 4);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (161, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (161, 6);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (161, 13);

-- Linha 162
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (162, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (162, (SELECT id FROM turma WHERE nome = 'INI2B'));

-- Linha 163
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Análise e Projeto de Sistemas'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (163, (SELECT id FROM usuario WHERE nome = 'Rafael Junqueira Martarelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (163, (SELECT id FROM turma WHERE nome = 'INI3A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (163, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (163, 6);

-- Linha 164
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Aplicativos II'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (164, (SELECT id FROM usuario WHERE nome = 'Rafael Junqueira Martarelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (164, (SELECT id FROM turma WHERE nome = 'INI3A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (164, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (164, 6);

-- Linha 165
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (165, (SELECT id FROM usuario WHERE nome = 'João Alberto Zago Bevenuto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (165, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 166
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (166, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (166, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 167
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (167, (SELECT id FROM usuario WHERE nome = 'Francis Gabriel dos Santos Constante'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (167, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 168
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (168, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (168, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 169
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Gestão de Negócios II'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (169, (SELECT id FROM usuario WHERE nome = 'Jovita Mercedes Hojas Baenas'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (169, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 170
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (170, (SELECT id FROM usuario WHERE nome = 'Flávio Henrique Simão Saraiva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (170, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 171
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Inglês Técnico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (171, (SELECT id FROM usuario WHERE nome = 'Camilla Celeste Koga Campos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (171, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 172
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação IV - C#'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (172, (SELECT id FROM usuario WHERE nome = 'André Luiz Ribeiro Bicudo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (172, (SELECT id FROM turma WHERE nome = 'INI3A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (172, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (172, 6);

-- Linha 173
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação VI - Java'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (173, (SELECT id FROM usuario WHERE nome = 'Debora Barbosa Aires'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (173, (SELECT id FROM turma WHERE nome = 'INI3A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (173, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (173, 6);

-- Linha 174
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação V - PHP'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (174, (SELECT id FROM usuario WHERE nome = 'Marcelo Cabello Peres'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (174, (SELECT id FROM turma WHERE nome = 'INI3A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (174, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (174, 6);

-- Linha 175
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (175, (SELECT id FROM usuario WHERE nome = 'Adriana da Silva Reghine Giorjão'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (175, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 176
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (176, (SELECT id FROM usuario WHERE nome = 'Luiz Eduardo Comin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (176, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 177
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (177, (SELECT id FROM usuario WHERE nome = 'Neivaldo Fernando Strutzel Saggin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (177, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 178
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (178, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (178, (SELECT id FROM turma WHERE nome = 'INI3A'));

-- Linha 179
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Análise e Projeto de Sistemas'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (179, (SELECT id FROM usuario WHERE nome = 'Rafael Junqueira Martarelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (179, (SELECT id FROM turma WHERE nome = 'INI3B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (179, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (179, 6);

-- Linha 180
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Aplicativos II'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (180, (SELECT id FROM usuario WHERE nome = 'Rafael Junqueira Martarelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (180, (SELECT id FROM turma WHERE nome = 'INI3B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (180, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (180, 6);

-- Linha 181
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (181, (SELECT id FROM usuario WHERE nome = 'João Alberto Zago Bevenuto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (181, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 182
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (182, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (182, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 183
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (183, (SELECT id FROM usuario WHERE nome = 'Francis Gabriel dos Santos Constante'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (183, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 184
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (184, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (184, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 185
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Gestão de Negócios II'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (185, (SELECT id FROM usuario WHERE nome = 'Jovita Mercedes Hojas Baenas'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (185, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 186
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (186, (SELECT id FROM usuario WHERE nome = 'Flávio Henrique Simão Saraiva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (186, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 187
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Inglês Técnico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (187, (SELECT id FROM usuario WHERE nome = 'Camilla Celeste Koga Campos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (187, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 188
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação IV - C#'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (188, (SELECT id FROM usuario WHERE nome = 'André Luiz Ribeiro Bicudo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (188, (SELECT id FROM turma WHERE nome = 'INI3B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (188, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (188, 6);

-- Linha 189
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação VI - Java'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (189, (SELECT id FROM usuario WHERE nome = 'Debora Barbosa Aires'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (189, (SELECT id FROM turma WHERE nome = 'INI3B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (189, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (189, 6);

-- Linha 190
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação V - PHP'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (190, (SELECT id FROM usuario WHERE nome = 'Marcelo Cabello Peres'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (190, (SELECT id FROM turma WHERE nome = 'INI3B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (190, 5);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (190, 6);

-- Linha 191
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (191, (SELECT id FROM usuario WHERE nome = 'Adriana da Silva Reghine Giorjão'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (191, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 192
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (192, (SELECT id FROM usuario WHERE nome = 'Luiz Eduardo Comin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (192, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 193
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (193, (SELECT id FROM usuario WHERE nome = 'Neivaldo Fernando Strutzel Saggin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (193, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 194
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (194, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (194, (SELECT id FROM turma WHERE nome = 'INI3B'));

-- Linha 195
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Cálculos Mecânicos'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (195, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (195, (SELECT id FROM turma WHERE nome = 'MEC1'));

-- Linha 196
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Fundamentos da Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (196, (SELECT id FROM usuario WHERE nome = 'Daniel Zarpelão Porcel'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (196, (SELECT id FROM turma WHERE nome = 'MEC1'));

-- Linha 197
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Legislação Aplicada e Ética Profissional'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (197, (SELECT id FROM usuario WHERE nome = 'Maurício Augusto de Souza Ruiz'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (197, (SELECT id FROM turma WHERE nome = 'MEC1'));

-- Linha 198
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Normas Técnicas e de Segurança'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (198, (SELECT id FROM usuario WHERE nome = 'Paulo Rogério Pichelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (198, (SELECT id FROM turma WHERE nome = 'MEC1'));

-- Linha 199
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Tecnologia Mecânica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (199, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (199, (SELECT id FROM turma WHERE nome = 'MEC1'));

-- Linha 200
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Cálculos Mecânicos'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (200, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (200, (SELECT id FROM turma WHERE nome = 'MEC2'));

-- Linha 201
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Inglês Técnico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (201, (SELECT id FROM usuario WHERE nome = 'Camilla Celeste Koga Campos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (201, (SELECT id FROM turma WHERE nome = 'MEC2'));

-- Linha 202
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Instalações e Equipamentos Industriais'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (202, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (202, (SELECT id FROM turma WHERE nome = 'MEC2'));

-- Linha 203
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Órgãos de Máquinas'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (203, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (203, (SELECT id FROM turma WHERE nome = 'MEC2'));

-- Linha 204
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Redação Técnica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (204, (SELECT id FROM usuario WHERE nome = 'Adriana da Silva Reghine Giorjão'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (204, (SELECT id FROM turma WHERE nome = 'MEC2'));

-- Linha 205
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Automação Industrial'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (205, (SELECT id FROM usuario WHERE nome = 'Francisco Paez Neto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (205, (SELECT id FROM turma WHERE nome = 'MEC3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (205, 9);

-- Linha 206
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Computação Gráfica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (206, (SELECT id FROM usuario WHERE nome = 'Washington Luiz Bueno da Silva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (206, (SELECT id FROM turma WHERE nome = 'MEC3'));

-- Linha 207
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Gestão de Negócios I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (207, (SELECT id FROM usuario WHERE nome = 'Jovita Mercedes Hojas Baenas'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (207, (SELECT id FROM turma WHERE nome = 'MEC3'));

-- Linha 208
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Hidráulica e Pneumática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (208, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (208, (SELECT id FROM turma WHERE nome = 'MEC3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (208, 10);

-- Linha 209
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Máquinas Térmicas e de Transporte'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (209, (SELECT id FROM usuario WHERE nome = 'André Luis da Costa Rocha'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (209, (SELECT id FROM turma WHERE nome = 'MEC3'));

-- Linha 210
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (210, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (210, (SELECT id FROM turma WHERE nome = 'MEC3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (210, 11);

-- Linha 211
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Resistência dos Materiais'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (211, (SELECT id FROM usuario WHERE nome = 'André Luis da Costa Rocha'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (211, (SELECT id FROM turma WHERE nome = 'MEC3'));

-- Linha 212
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Arte'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (212, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (212, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 213
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (213, (SELECT id FROM usuario WHERE nome = 'João Alberto Zago Bevenuto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (213, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 214
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Cálculos Mecânicos'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (214, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (214, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 215
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Educação Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (215, (SELECT id FROM usuario WHERE nome = 'Elvis de Souza Malta'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (215, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 216
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (216, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (216, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 217
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (217, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (217, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 218
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Fundamentos da Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (218, (SELECT id FROM usuario WHERE nome = 'Daniel Zarpelão Porcel'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (218, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 219
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (219, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (219, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 220
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (220, (SELECT id FROM usuario WHERE nome = 'Christine Vieira Da Maia Areias'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (220, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 221
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Legislação Aplicada e Ética Profissional'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (221, (SELECT id FROM usuario WHERE nome = 'Maurício Augusto de Souza Ruiz'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (221, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 222
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Inglesa'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (222, (SELECT id FROM usuario WHERE nome = 'Maria Cândida Correa'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (222, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 223
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (223, (SELECT id FROM usuario WHERE nome = 'Maria Regina Momesso'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (223, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 224
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (224, (SELECT id FROM usuario WHERE nome = 'Ricardo Pessoa dos Santos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (224, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 225
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Normas Técnicas e de Segurança'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (225, (SELECT id FROM usuario WHERE nome = 'Paulo Rogério Pichelli'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (225, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 226
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (226, (SELECT id FROM usuario WHERE nome = 'Carmen Regina de Souza'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (226, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 227
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (227, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (227, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 228
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Tecnologia Mecânica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (228, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (228, (SELECT id FROM turma WHERE nome = 'MEI1'));

-- Linha 229
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (229, (SELECT id FROM usuario WHERE nome = 'João Alberto Zago Bevenuto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (229, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 230
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Cálculos Mecânicos'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (230, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (230, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 231
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Educação Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (231, (SELECT id FROM usuario WHERE nome = 'Elvis de Souza Malta'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (231, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 232
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (232, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (232, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 233
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (233, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (233, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 234
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (234, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (234, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 235
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (235, (SELECT id FROM usuario WHERE nome = 'Christine Vieira Da Maia Areias'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (235, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 236
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Inglês Técnico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (236, (SELECT id FROM usuario WHERE nome = 'Camilla Celeste Koga Campos'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (236, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 237
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Instalações e Equipamentos Industriais'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (237, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (237, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 238
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Inglesa'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (238, (SELECT id FROM usuario WHERE nome = 'Maria Cândida Correa'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (238, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 239
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (239, (SELECT id FROM usuario WHERE nome = 'Adriana da Silva Reghine Giorjão'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (239, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 240
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (240, (SELECT id FROM usuario WHERE nome = 'Daniel Zarpelão Porcel'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (240, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 241
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Órgãos de Máquinas'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (241, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (241, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 242
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (242, (SELECT id FROM usuario WHERE nome = 'Marcelo Rodrigues da Silva Pelissari'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (242, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 243
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Redação Técnica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (243, (SELECT id FROM usuario WHERE nome = 'Adriana da Silva Reghine Giorjão'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (243, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 244
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (244, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (244, (SELECT id FROM turma WHERE nome = 'MEI2'));

-- Linha 245
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Biologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (245, (SELECT id FROM usuario WHERE nome = 'Daniela Mancuso Roda'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (245, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 246
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Filosofia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (246, (SELECT id FROM usuario WHERE nome = 'Anderson Luiz Pereira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (246, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 247
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (247, (SELECT id FROM usuario WHERE nome = 'Francis Gabriel dos Santos Constante'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (247, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 248
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Geografia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (248, (SELECT id FROM usuario WHERE nome = 'Lismaria Polato Francelin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (248, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 249
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Gestão de Negócios I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (249, (SELECT id FROM usuario WHERE nome = 'Jovita Mercedes Hojas Baenas'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (249, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 250
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'História'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (250, (SELECT id FROM usuario WHERE nome = 'Flávio Henrique Simão Saraiva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (250, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 251
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Língua Portuguesa e Literatura'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (251, (SELECT id FROM usuario WHERE nome = 'Adriana da Silva Reghine Giorjão'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (251, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 252
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Máquinas Térmicas e de Transporte'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (252, (SELECT id FROM usuario WHERE nome = 'André Luis da Costa Rocha'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (252, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 253
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Matemática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (253, (SELECT id FROM usuario WHERE nome = 'Luiz Eduardo Comin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (253, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 254
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (254, (SELECT id FROM usuario WHERE nome = 'Neivaldo Fernando Strutzel Saggin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (254, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 255
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 1, 0, 'Turma Única', (SELECT id FROM disciplina WHERE nome = 'Sociologia'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (255, (SELECT id FROM usuario WHERE nome = 'Maria Cornelia Nogueira Paratella Franco'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (255, (SELECT id FROM turma WHERE nome = 'MEI3'));

-- Linha 256
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (256, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (256, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (256, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (256, (SELECT id FROM turma WHERE nome = 'MEC1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (256, 11);

-- Linha 257
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (257, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (257, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (257, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (257, (SELECT id FROM turma WHERE nome = 'MEC1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (257, 11);

-- Linha 258
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma C', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (258, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (258, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (258, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (258, (SELECT id FROM turma WHERE nome = 'MEC1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (258, 11);

-- Linha 259
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (259, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (259, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (259, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (259, (SELECT id FROM turma WHERE nome = 'MEC2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (259, 11);

-- Linha 260
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (260, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (260, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (260, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (260, (SELECT id FROM turma WHERE nome = 'MEC2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (260, 11);

-- Linha 261
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma C', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (261, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (261, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (261, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (261, (SELECT id FROM turma WHERE nome = 'MEC2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (261, 11);

-- Linha 262
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (262, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (262, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (262, (SELECT id FROM usuario WHERE nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (262, (SELECT id FROM turma WHERE nome = 'MEI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (262, 11);

-- Linha 263
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (263, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (263, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (263, (SELECT id FROM usuario WHERE nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (263, (SELECT id FROM turma WHERE nome = 'MEI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (263, 11);

-- Linha 264
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma C', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (264, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (264, (SELECT id FROM usuario WHERE nome = 'Osmar Souza Boico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (264, (SELECT id FROM usuario WHERE nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (264, (SELECT id FROM turma WHERE nome = 'MEI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (264, 11);

-- Linha 265
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (265, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (265, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (265, (SELECT id FROM usuario onde nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (265, (SELECT id FROM turma onde nome = 'MEI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (265, 11);

-- Linha 266
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (266, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (266, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (266, (SELECT id FROM usuario onde nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (266, (SELECT id FROM turma onde nome = 'MEI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (266, 11);

-- Linha 267
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma C', (SELECT id FROM disciplina WHERE nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (267, (SELECT id FROM usuario WHERE nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (267, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (267, (SELECT id FROM usuario onde nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (267, (SELECT id FROM turma onde nome = 'MEI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (267, 11);

-- Linha 268
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma A', (SELECT id FROM disciplina onde nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (268, (SELECT id FROM usuario onde nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (268, (SELECT id FROM usuario onde nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (268, (SELECT id FROM usuario onde nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (268, (SELECT id FROM turma onde nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (268, 11);

-- Linha 269
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma B', (SELECT id FROM disciplina onde nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (269, (SELECT id FROM usuario onde nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (269, (SELECT id FROM usuario onde nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (269, (SELECT id FROM usuario onde nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (269, (SELECT id FROM turma onde nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (269, 11);

-- Linha 270
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma C', (SELECT id FROM disciplina onde nome = 'Mecânica Prática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (270, (SELECT id FROM usuario onde nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (270, (SELECT id FROM usuario onde nome = 'Lívio Marcos Josué'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (270, (SELECT id FROM usuario onde nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (270, (SELECT id FROM turma onde nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (270, 11);

-- Linha 271
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (271, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (271, (SELECT id FROM turma WHERE nome = 'ELI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (271, 2);

-- Linha 272
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (272, (SELECT id FROM usuario WHERE nome = 'Carmen Regina de Souza'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (272, (SELECT id FROM turma WHERE nome = 'ELI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (272, 1);

-- Linha 273
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (271, 273);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (272, 273);

-- Linha 274
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (274, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (274, (SELECT id FROM turma WHERE nome = 'ELI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (274, 2);

-- Linha 275
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (275, (SELECT id FROM usuario WHERE nome = 'Neivaldo Fernando Strutzel Saggin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (275, (SELECT id FROM turma WHERE nome = 'ELI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (275, 1);

-- Linha 276
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (274, 276);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (275, 276);

-- Linha 277
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (277, (SELECT id FROM usuario WHERE nome = 'Francis Gabriel dos Santos Constante'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (277, (SELECT id FROM turma WHERE nome = 'INI1A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (277, 2);

-- Linha 278
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (278, (SELECT id FROM usuario WHERE nome = 'Carmen Regina de Souza'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (278, (SELECT id FROM turma WHERE nome = 'INI1A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (278, 1);

-- Linha 279
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (277, 279);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (278, 279);

-- Linha 280
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (280, (SELECT id FROM usuario WHERE nome = 'Francis Gabriel dos Santos Constante'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (280, (SELECT id FROM turma WHERE nome = 'INI1B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (280, 2);

-- Linha 281
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (281, (SELECT id FROM usuario WHERE nome = 'Carmen Regina de Souza'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (281, (SELECT id FROM turma WHERE nome = 'INI1B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (281, 1);

-- Linha 282
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (280, 282);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (281, 282);

-- Linha 283
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (283, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (283, (SELECT id FROM turma WHERE nome = 'INI2A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (283, 2);

-- Linha 284
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (284, (SELECT id FROM usuario WHERE nome = 'Neivaldo Fernando Strutzel Saggin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (284, (SELECT id FROM turma WHERE nome = 'INI2A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (284, 1);

-- Linha 285
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (283, 285);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (284, 285);

-- Linha 286
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (286, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (286, (SELECT id FROM turma WHERE nome = 'INI2B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (286, 2);

-- Linha 287
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (287, (SELECT id FROM usuario WHERE nome = 'Neivaldo Fernando Strutzel Saggin'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (287, (SELECT id FROM turma WHERE nome = 'INI2B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (287, 1);

-- Linha 288
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (287, 288);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (286, 288);

-- Linha 289
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (289, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (289, (SELECT id FROM turma WHERE nome = 'MEI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (289, 2);

-- Linha 290
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (290, (SELECT id FROM usuario WHERE nome = 'Carmen Regina de Souza'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (290, (SELECT id FROM turma WHERE nome = 'MEI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (290, 1);

-- Linha 291
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (289, 291);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (290, 291);

-- Linha 292
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Física'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (292, (SELECT id FROM usuario WHERE nome = 'Marcus Vinicius Gonçalves Vismara'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (292, (SELECT id FROM turma WHERE nome = 'MEI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (292, 2);

-- Linha 293
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Laboratório - Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Química'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (293, (SELECT id FROM usuario WHERE nome = 'Marcelo Rodrigues da Silva Pelissari'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (293, (SELECT id FROM turma WHERE nome = 'MEI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (293, 1);

-- Linha 294
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (292, 294);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (293, 294);

---------------------------------------------------------------------------------------------------

-- Linha 295
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Eletrotécnica Geral'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (295, (SELECT id FROM usuario WHERE nome = 'Marcelo Antonio Minorello'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (296, (SELECT id FROM turma WHERE nome = 'ELE1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (295, 8);

-- Linha 296
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Eletrotécnica Geral'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (296, (SELECT id FROM usuario WHERE nome = 'Marcelo Antonio Minorello'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (296, (SELECT id FROM turma WHERE nome = 'ELE1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (296, 8);

-- Linha 297
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (297, (SELECT id FROM usuario WHERE nome = 'Jeferson André Bigheti'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (297, (SELECT id FROM turma WHERE nome = 'ELE1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (297, 3);

-- Linha 298
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (298, (SELECT id FROM usuario WHERE nome = 'Jeferson André Bigheti'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (298, (SELECT id FROM turma WHERE nome = 'ELE1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (298, 3);

-- Linha 299
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 2, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Sistemas Digitais I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (299, (SELECT id FROM usuario WHERE nome = 'Jeferson André Bigheti'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (299, (SELECT id FROM turma WHERE nome = 'ELE1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (299, 7);

-- Linha 300
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 2, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Sistemas Digitais I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (300, (SELECT id FROM usuario WHERE nome = 'Jeferson André Bigheti'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (300, (SELECT id FROM turma WHERE nome = 'ELE1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (300, 7);

-- Linha 301
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (295, 301);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (298, 301);

-- Linha 302
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (296, 302);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (297, 302);

-- Linha 303
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (295, 303);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (300, 303);

-- Linha 304
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (296, 304);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (299, 304);

-- Linha 305
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Eletrotécnica Geral'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (305, (SELECT id FROM usuario WHERE nome = 'Marcelo Antonio Minorello'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (305, (SELECT id FROM turma WHERE nome = 'ELI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (305, 8);

-- Linha 306
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Eletrotécnica Geral'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (306, (SELECT id FROM usuario WHERE nome = 'Marcelo Antonio Minorello'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (306, (SELECT id FROM turma WHERE nome = 'ELI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (306, 8);

-- Linha 307
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (307, (SELECT id FROM usuario WHERE nome = 'Jeferson André Bigheti'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (307, (SELECT id FROM turma WHERE nome = 'ELI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (307, 3);

-- Linha 308
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (308, (SELECT id FROM usuario WHERE nome = 'Jeferson André Bigheti'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (308, (SELECT id FROM turma WHERE nome = 'ELI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (308, 3);

-- Linha 309
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Sistemas Digitais I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (309, (SELECT id FROM usuario WHERE nome = 'Jeferson André Bigheti'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (309, (SELECT id FROM turma WHERE nome = 'ELI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (309, 7);

-- Linha 310
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Sistemas Digitais I'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (310, (SELECT id FROM usuario WHERE nome = 'Jeferson André Bigheti'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (310, (SELECT id FROM turma WHERE nome = 'ELI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (310, 7);

-- Linha 311
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (305, 311);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (308, 311);

-- Linha 312
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (306, 312);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (307, 312);

-- Linha 313
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (305, 313);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (310, 313);

-- Linha 314
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (306, 314);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (309, 314);

-- Linha 315
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Eletrônica Básica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (315, (SELECT id FROM usuario WHERE nome = 'Giovanni Silva Tek'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (315, (SELECT id FROM turma WHERE nome = 'ELI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (315, 7);

-- Linha 316
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 4, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Eletrônica Básica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (316, (SELECT id FROM usuario WHERE nome = 'Giovanni Silva Tek'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (316, (SELECT id FROM turma WHERE nome = 'ELI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (316, 7);

-- Linha 317
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Sistemas Digitais II'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (317, (SELECT id FROM usuario WHERE nome = 'Marcelo Antonio Minorello'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (317, (SELECT id FROM turma WHERE nome = 'ELI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (317, 8);

-- Linha 318
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Sistemas Digitais II'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (318, (SELECT id FROM usuario WHERE nome = 'Marcelo Antonio Minorello'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (318, (SELECT id FROM turma WHERE nome = 'ELI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (318, 8);

-- Linha 319
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (315, 319);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (318, 319);

-- Linha 320
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (316, 320);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (317, 320);

-- Linha 321
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Eletrônica Industrial'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (321, (SELECT id FROM usuario WHERE nome = 'Jair Hilário Zorzi Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (321, (SELECT id FROM turma WHERE nome = 'ELI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (321, 7);

-- Linha 322
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Eletrônica Industrial'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (322, (SELECT id FROM usuario WHERE nome = 'Jair Hilário Zorzi Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (322, (SELECT id FROM turma WHERE nome = 'ELI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (322, 7);

-- Linha 323
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 2, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Sistemas Microprocessados'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (323, (SELECT id FROM usuario WHERE nome = 'Claudio Martius Giaretta Doria Vieira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (323, (SELECT id FROM turma WHERE nome = 'ELI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (323, 8);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (323, 9);

-- Linha 324
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 2, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Laboratório de Sistemas Microprocessados'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (324, (SELECT id FROM usuario WHERE nome = 'Claudio Martius Giaretta Doria Vieira'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (324, (SELECT id FROM turma WHERE nome = 'ELI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (324, 8);
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (324, 9);

-- Linha 325
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (321, 325);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (324, 325);

-- Linha 326
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (322, 326);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (323, 326);

-- Linha 327
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Fundamentos de Informática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (327, (SELECT id FROM usuario WHERE nome = 'José Vieira Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (327, (SELECT id FROM turma WHERE nome = 'INF1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (327, 3);

-- Linha 328
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Fundamentos de Informática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (328, (SELECT id FROM usuario WHERE nome = 'José Vieira Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (328, (SELECT id FROM turma WHERE nome = 'INF1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (328, 3);

-- Linha 329
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Técnicas de Programação'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (329, (SELECT id FROM usuario WHERE nome = 'Kátia Lívia Zambon'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (329, (SELECT id FROM turma WHERE nome = 'INF1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (329, 4);

-- Linha 330
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Técnicas de Programação'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (330, (SELECT id FROM usuario WHERE nome = 'Kátia Lívia Zambon'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (330, (SELECT id FROM turma WHERE nome = 'INF1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (330, 4);

-- Linha 331
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (327, 331);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (330, 331);

-- Linha 332
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (328, 332);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (329, 332);

-- Linha 333
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Fundamentos de Informática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (333, (SELECT id FROM usuario WHERE nome = 'José Vieira Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (333, (SELECT id FROM turma WHERE nome = 'INI1A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (333, 3);

-- Linha 334
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Fundamentos de Informática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (334, (SELECT id FROM usuario WHERE nome = 'José Vieira Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (334, (SELECT id FROM turma WHERE nome = 'INI1A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (334, 3);

-- Linha 335
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Técnicas de Programação'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (335, (SELECT id FROM usuario WHERE nome = 'Kátia Lívia Zambon'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (335, (SELECT id FROM turma WHERE nome = 'INI1A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (335, 4);

-- Linha 336
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Técnicas de Programação'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (336, (SELECT id FROM usuario WHERE nome = 'Kátia Lívia Zambon'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (336, (SELECT id FROM turma WHERE nome = 'INI1A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (336, 4);

-- Linha 337
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (333, 337);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (336, 337);

-- Linha 338
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (334, 338);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (335, 338);

-- Linha 339
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Fundamentos de Informática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (339, (SELECT id FROM usuario WHERE nome = 'José Vieira Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (339, (SELECT id FROM turma WHERE nome = 'INI1B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (339, 3);

-- Linha 340
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Fundamentos de Informática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (340, (SELECT id FROM usuario WHERE nome = 'José Vieira Junior'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (340, (SELECT id FROM turma WHERE nome = 'INI1B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (340, 3);

-- Linha 341
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Técnicas de Programação'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (341, (SELECT id FROM usuario WHERE nome = 'Kátia Lívia Zambon'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (341, (SELECT id FROM turma WHERE nome = 'INI1B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (341, 4);

-- Linha 342
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Técnicas de Programação'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (342, (SELECT id FROM usuario WHERE nome = 'Kátia Lívia Zambon'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (342, (SELECT id FROM turma WHERE nome = 'INI1B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (342, 4);

-- Linha 343
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (339, 343);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (342, 343);

-- Linha 344
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (340, 344);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (341, 344);

-- Linha 345
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Desenvolvimento Web - PHP'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (345, (SELECT id FROM usuario WHERE nome = 'Marcelo Cabello Peres'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (345, (SELECT id FROM turma WHERE nome = 'INI2A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (345, 5);

-- Linha 346
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Desenvolvimento Web - PHP'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (346, (SELECT id FROM usuario WHERE nome = 'Marcelo Cabello Peres'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (346, (SELECT id FROM turma WHERE nome = 'INI2A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (346, 5);

-- Linha 347
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação II - C#'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (347, (SELECT id FROM usuario WHERE nome = 'Vitor Assis Camargo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (347, (SELECT id FROM turma WHERE nome = 'INI2A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (347, 6);

-- Linha 348
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação II - C#'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (348, (SELECT id FROM usuario WHERE nome = 'Vitor Assis Camargo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (348, (SELECT id FROM turma WHERE nome = 'INI2A'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (348, 6);

-- Linha 349
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (345, 349);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (348, 349);

-- Linha 350
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (346, 350);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (347, 350);

-- Linha 351
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Desenvolvimento Web - PHP'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (351, (SELECT id FROM usuario WHERE nome = 'Marcelo Cabello Peres'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (351, (SELECT id FROM turma WHERE nome = 'INI2B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (351, 5);

-- Linha 352
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Desenvolvimento Web - PHP'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (352, (SELECT id FROM usuario WHERE nome = 'Marcelo Cabello Peres'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (352, (SELECT id FROM turma WHERE nome = 'INI2B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (352, 5);

-- Linha 353
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação II - C#'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (353, (SELECT id FROM usuario WHERE nome = 'Vitor Assis Camargo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (353, (SELECT id FROM turma WHERE nome = 'INI2B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (353, 6);

-- Linha 354
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Linguagem de Programação II - C#'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (354, (SELECT id FROM usuario WHERE nome = 'Vitor Assis Camargo'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (354, (SELECT id FROM turma WHERE nome = 'INI2B'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (354, 6);

-- Linha 355
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (351, 355);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (354, 355);

-- Linha 356
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (352, 356);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (353, 356);

-- Linha 357
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Desenho Técnico Mecânico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (357, (SELECT id FROM usuario WHERE nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (357, (SELECT id FROM turma WHERE nome = 'MEC1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (357, 5);

-- Linha 358
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Desenho Técnico Mecânico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (358, (SELECT id FROM usuario WHERE nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (358, (SELECT id FROM turma WHERE nome = 'MEC1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (358, 5);

-- Linha 359
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (359, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (359, (SELECT id FROM turma WHERE nome = 'MEC1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (359, 13);

-- Linha 360
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (360, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (360, (SELECT id FROM turma WHERE nome = 'MEC1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (360, 13);

-- Linha 361
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (357, 361);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (360, 361);

-- Linha 362
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (358, 362);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (359, 362);

-- Linha 363
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Desenho Técnico Mecânico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (363, (SELECT id FROM usuario WHERE nome = 'Washington Luiz Bueno da Silva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (363, (SELECT id FROM turma WHERE nome = 'MEI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (363, 5);

-- Linha 364
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Desenho Técnico Mecânico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (364, (SELECT id FROM usuario WHERE nome = 'Washington Luiz Bueno da Silva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (364, (SELECT id FROM turma WHERE nome = 'MEI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (364, 5);

-- Linha 365
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (365, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (365, (SELECT id FROM turma WHERE nome = 'MEI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (365, 13);

-- Linha 366
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Informática Aplicada'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (366, (SELECT id FROM usuario WHERE nome = 'Fernando Marcos Carneiro'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (366, (SELECT id FROM turma WHERE nome = 'MEI1'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (366, 13);

-- Linha 367
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (363, 367);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (366, 367);

-- Linha 368
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (364, 368);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (365, 368);

-- Linha 369
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Desenho Gráfico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (369, (SELECT id FROM usuario WHERE nome = 'Washington Luiz Bueno da Silva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (369, (SELECT id FROM turma WHERE nome = 'MEC2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (369, 10);

-- Linha 370
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Desenho Gráfico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (370, (SELECT id FROM usuario WHERE nome = 'Washington Luiz Bueno da Silva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (370, (SELECT id FROM turma WHERE nome = 'MEC2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (370, 10);

-- Linha 371
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Programação de Máquinas CNC'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (371, (SELECT id FROM usuario WHERE nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (371, (SELECT id FROM turma WHERE nome = 'MEC2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (371, 13);

-- Linha 372
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Programação de Máquinas CNC'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (372, (SELECT id FROM usuario WHERE nome = 'Guilherme Toshio de Jesus'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (372, (SELECT id FROM turma WHERE nome = 'MEC2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (372, 13);

-- Linha 373
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (369, 373);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (372, 373);

-- Linha 374
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (370, 374);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (371, 374);

-- Linha 375
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Desenho Gráfico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (375, (SELECT id FROM usuario WHERE nome = 'Washington Luiz Bueno da Silva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (375, (SELECT id FROM turma WHERE nome = 'MEI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (375, 10);

-- Linha 376
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Desenho Gráfico'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (376, (SELECT id FROM usuario WHERE nome = 'Washington Luiz Bueno da Silva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (376, (SELECT id FROM turma WHERE nome = 'MEI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (376, 10);

-- Linha 377
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Programação de Máquinas CNC'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (377, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (377, (SELECT id FROM turma WHERE nome = 'MEI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (377, 13);

-- Linha 378
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Programação de Máquinas CNC'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (378, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (378, (SELECT id FROM turma WHERE nome = 'MEI2'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (378, 13);

-- Linha 379
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (375, 379);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (378, 379);

-- Linha 380
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (376, 380);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (377, 380);

-- Linha 381
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Automação Industrial'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (381, (SELECT id FROM usuario WHERE nome = 'Francisco Paez Neto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (381, (SELECT id FROM turma WHERE nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (381, 9);

-- Linha 382
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Automação Industrial'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (382, (SELECT id FROM usuario WHERE nome = 'Francisco Paez Neto'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (382, (SELECT id FROM turma WHERE nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (382, 9);

-- Linha 383
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Hidráulica e Pneumática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (383, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (383, (SELECT id FROM turma WHERE nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (383, 10);

-- Linha 384
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 3, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Hidráulica e Pneumática'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (384, (SELECT id FROM usuario WHERE nome = 'Mateus Dóta de Lima'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (384, (SELECT id FROM turma WHERE nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (384, 10);

-- Linha 385
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (381, 385);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (384, 385);

-- Linha 386
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (3);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (382, 386);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (383, 386);

-- Linha 387
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Computação Gráfica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (387, (SELECT id FROM usuario WHERE nome = 'Washington Luiz Bueno da Silva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (387, (SELECT id FROM turma WHERE nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (387, 13);

-- Linha 388
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Computação Gráfica'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (388, (SELECT id FROM usuario WHERE nome = 'Washington Luiz Bueno da Silva'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (388, (SELECT id FROM turma WHERE nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (388, 13);

-- Linha 389
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma A', (SELECT id FROM disciplina WHERE nome = 'Resistência dos Materiais'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (389, (SELECT id FROM usuario WHERE nome = 'André Luis da Costa Rocha'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (389, (SELECT id FROM turma WHERE nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (389, 14);

-- Linha 390
INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina)
VALUES (2024, 2, 1, 'Turma B', (SELECT id FROM disciplina WHERE nome = 'Resistência dos Materiais'));
INSERT INTO atribuicao_usuario (id_atribuicao, id_professor)
VALUES (390, (SELECT id FROM usuario WHERE nome = 'André Luis da Costa Rocha'));
INSERT INTO atribuicao_turma (id_atribuicao, id_turma)
VALUES (390, (SELECT id FROM turma WHERE nome = 'MEI3'));
INSERT INTO atribuicao_lab (id_atribuicao, id_lab)
VALUES (390, 14);

-- Linha 391
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (387, 391);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (390, 391);

-- Linha 392
INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (2);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (388, 392);
INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (389, 392);
