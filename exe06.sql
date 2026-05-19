CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(50) NOT NULL,
    origem_produto VARCHAR(50) NOT NULL
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    data_validade DATE NOT NULL,
    quantidade_estoque INT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, origem_produto) VALUES
('Medicamentos', 'Genérico'),
('Medicamentos', 'Nacional'),
('Cosméticos e Beleza', 'Importado'),
('Higiene Pessoal', 'Nacional'),
('Nutrição e Suplementos', 'Importado');

INSERT INTO tb_produtos (nome, valor, data_validade, quantidade_estoque, categoria_id) VALUES
('Dipirona Monoidratada 500mg', 6.50, '2028-05-10', 150, 1),
('Protetor Solar', 89.90, '2027-11-20', 40, 3), 
('Shampoo Cristiano Ronaldo', 22.90, '2029-01-15', 85, 4),
('Amoxicilina', 48.00, '2027-08-05', 60, 1),
('Whey Protein', 199.90, '2027-03-30', 20, 5),
('Desodorante Rexona Clinical', 29.90, '2028-12-01', 110, 4),
('Dorflex', 64.20, '2028-02-14', 95, 2),
('Batom', 55.00, '2027-06-18', 35, 3);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.*, tb_categorias.*
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.*, tb_categorias.*
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Medicamentos";
