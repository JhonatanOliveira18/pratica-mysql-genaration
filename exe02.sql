CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    quantidade INT,
    categoria VARCHAR(255)
);

INSERT INTO tb_produtos (nome, valor, quantidade, categoria) VALUES
('Coxinha de Frango com Catupiry', 800.50, 150, 'Salgados Fritos'),
('Pão de Queijo', 500.00, 80, 'Salgados Assados'),
('Bolinha de Queijo', 700.50, 200, 'Salgados Fritos'),
('Kibe Recheado com Catupiry', 800.00, 120, 'Salgados Fritos'),
('Enroladinho de Presunto e Queijo', 700.00, 90, 'Salgados Assados'),
('Esfiha de Carne Fechada', 800.00, 110, 'Salgados Assados'),
('Empada de Palmito', 900.00, 70, 'Salgados Assados'),
('Cento de Salgados Sortidos (Mini)', 650.00, 30, 'Combos / Festas');

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET quantidade = 300 WHERE id = 3;
