CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    animal_origem VARCHAR(50) NOT NULL,
    classificacao VARCHAR(50) NOT NULL -- Carne de primeira, segunda...
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(100),
    valor DECIMAL(6,2) NOT NULL,
    data_validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (animal_origem, classificacao) VALUES
('Bovino', 'Carne de Primeira'),
('Bovino', 'Carne de Segunda'),
('Suíno', 'Carne de Primeira'),
('Avícola', 'Carne de Primeira'),
('Suíno', 'Embutidos e Defumados');

INSERT INTO tb_produtos (nome, marca, valor, data_validade, categoria_id) VALUES
('Picanha Fatiada', 'Friboi Maturatta', 89.90, '2026-06-15', 1),
('Acém em Cubos', 'Swift', 28.50, '2026-06-20', 2),
('Corte de Filé Mignon', 'Friboi', 95.00, '2026-06-10', 1),
('Linguiça Toscana para Churrasco', 'Perdigão', 24.90, '2026-07-01', 5),
('Peito de Frango Desfiado', 'Seara', 19.90, '2026-06-18', 4),
('Costelinha Suína', 'Seara', 42.00, '2026-06-25', 3),
('Cupim Bovino', 'Swift', 55.00, '2026-07-05', 2),
('Bacon', 'Sadia', 14.90, '2026-08-12', 5);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.*
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.*, tb_categorias.*
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.animal_origem = 'Bovino';




