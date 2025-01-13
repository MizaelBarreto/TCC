INSERT INTO usuario (nome, email, senha, adm, prof, excluido) VALUES 
('Professor A', 'profA@example.com', 'password', FALSE, TRUE, FALSE),
('Professor B', 'profB@example.com', 'password', FALSE, TRUE, FALSE),
('Professor C', 'profA@example.com', 'password', FALSE, TRUE, FALSE),
('Professor D', 'profB@example.com', 'password', FALSE, TRUE, FALSE),
('Professor E', 'profA@example.com', 'password', FALSE, TRUE, FALSE),
('Professor F', 'profB@example.com', 'password', FALSE, TRUE, FALSE),
('Professor G', 'profA@example.com', 'password', FALSE, TRUE, FALSE),
('Professor H', 'profB@example.com', 'password', FALSE, TRUE, FALSE);

INSERT INTO disciplina (nome) VALUES ('Matemática'), ('Física'), ('Química'), ('Biologia'), ('Historia'), ('Geografia');

INSERT INTO turma (nome) VALUES ('Turma 1'), ('Turma 2'), ('Turma 3'), ('Turma 4'), ('Turma 5');

INSERT INTO lab (nome) VALUES ('Laboratório de Química'), ('Laboratório de Física');

INSERT INTO atribuicao (ano, qntd_aulas, qntd_laboratorios, sd_descricao, id_disciplina) VALUES 
(2023, 2, 1, 'Turma A', 2),
(2023, 2, 1, 'Turma B', 3),
(2023, 4, 0, 'Turma Única', 1),
(2023, 2, 0, 'Turma Única', 4),
(2023, 2, 0, 'Turma Única', 5),
(2023, 2, 0, 'Turma Única', 6);

INSERT INTO atribuicaoCasada (qntd_aulas_casada) VALUES (4);

INSERT INTO atribuicao_atribuicaoCasada (id_atribuicao, id_atribuicaoCasada) VALUES (28, 34), (29, 34);

INSERT INTO atribuicao_turma (id_atribuicao, id_turma) VALUES (28, 8), (29, 8), (28, 9), (29, 9), (28, 10), (29, 10), 
                                                              (28, 11), (29, 11), (28, 12), (29, 12), (30, 8), (30, 9),
                                                              (30, 10), (30, 11), (30, 12), (31, 8), (31, 9), (31, 10),
                                                              (31, 11), (31, 12), (32, 8), (32, 9), (32, 10), (32, 11), 
                                                              (32, 12), (33, 8), (33, 9), (33, 10), (33, 11), (33, 12);     

INSERT INTO atribuicao_lab (id_atribuicao, id_lab) VALUES (28, 5), (29, 6);

INSERT INTO usuario_atribuicao (id_professor, id_atribuicao) VALUES (11, 28), (12, 29), (13, 30), (14, 31), (15, 32), (16, 33);

SELECT 
    a.id AS id_atribuicao,
    d.nome AS d_descricao,
    a.sd_descricao::TEXT AS sd_descricao,
    a.qntd_aulas AS aulas_semana,
    u.id AS id_professor,
    u.nome AS nome_professor,
    t.nome AS turma_com_ind,
    a.qntd_laboratorios AS qntd_lab,
    STRING_AGG(DISTINCT l.nome, ', ') AS lab
FROM 
    atribuicao a
LEFT JOIN 
    atribuicao_atribuicaoCasada ac ON a.id = ac.id_atribuicao
LEFT JOIN 
    atribuicaoCasada acasada ON ac.id_atribuicaoCasada = acasada.id
LEFT JOIN 
    disciplina d ON a.id_disciplina = d.id
LEFT JOIN 
    atribuicao_turma at ON a.id = at.id_atribuicao
LEFT JOIN 
    turma t ON at.id_turma = t.id
LEFT JOIN 
    usuario_atribuicao ua ON a.id = ua.id_atribuicao
LEFT JOIN 
    usuario u ON ua.id_professor = u.id
LEFT JOIN 
    atribuicao_lab al ON a.id = al.id_atribuicao
LEFT JOIN 
    lab l ON al.id_lab = l.id
GROUP BY 
    a.id, d.nome, a.sd_descricao, a.qntd_aulas, u.id, u.nome, t.nome, a.qntd_laboratorios
ORDER BY 
    a.id;