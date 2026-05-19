CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    area_tecnologia VARCHAR(50) NOT NULL,
    nivel VARCHAR(50) NOT NULL
);

CREATE TABLE tb_cursos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    duracao_horas INT NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    instrutor VARCHAR(50),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (area_tecnologia, nivel) VALUES
('Desenvolvimento Web', 'Iniciante'),
('Desenvolvimento Web', 'Avançado'),
('Ciência de Dados', 'Intermediário'),
('Mobile', 'Iniciante'),
('Segurança da Informação', 'Avançado');

INSERT INTO tb_cursos (nome, duracao_horas, valor, instrutor, categoria_id) VALUES
('Lógica de Programação com JavaScript', 40, 150.00, 'Gustavo Guanabara', 1),
('Formação Java Spring Boot', 120, 850.00, 'Yuri Oliveira', 2),
('Python para Análise de Dados', 60, 450.00, 'Indio Medeiros', 3),
('Desenvolvimento Android', 80, 650.00, 'Claudio Teixeira', 4),
('Cyber Segurança', 90, 1200.00, 'Luan Mendes', 5),
('Java Avançado e Arquitetura de Software', 100, 990.00, 'Nelio Alves', 2),
('Machine Learning e IA', 75, 750.00, 'Antonio Ultron', 3),
('HTML5 e CSS3', 30, 99.00, 'Rafaela Ballerini', 1);

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT tb_cursos.*, tb_categorias.*
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT tb_cursos.*, tb_categorias.*
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.area_tecnologia = 'Desenvolvimento Web';