CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo_pizza VARCHAR(20) NOT NULL, -- Doce / Salgada
    tamanho CHAR NOT NULL -- (B)Broto/(G)Grande
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
	borda_recheada BOOLEAN NOT NULL,
    valor DECIMAL(5,2) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo_pizza, tamanho) VALUES
('Salgada', 'G'), -- Pizza Grande Salgada
('Salgada', 'B'), -- Pizza Broto Salgada
('Doce', 'G'),    -- Pizza Grande Doce
('Doce', 'B'),    -- Pizza Broto Doce
('Vegana', 'G'),  -- Pizza Grande Vegana 
('Vegana', 'B');  -- Pizza Broto Vegana

INSERT INTO tb_pizzas (nome, ingredientes, borda_recheada, valor, categoria_id) VALUES
('Calabresa', 'Molho de tomate, calabresa fatiada, cebola e orégano', true, 101.00, 1),       -- Salgada Grande
('Frango com Catupiry', 'Molho de tomate, frango desfiado, catupiry e orégano', true, 52.00, 1), -- Salgada Grande
('Marguerita', 'Molho de tomate, mozarela, rodelas de tomate e manjericão', false, 38.00, 2),  -- Salgada Broto
('Muçarela', 'Molho de tomate, mozarela e orégano', false, 35.00, 2),                          -- Salgada Broto
('Brigadeiro', 'Chocolate ao leite e granulado chocolate', false, 48.00, 3),                   -- Doce Grande
('Romeu e Julieta', 'Goiabada cascão e queijo mozarela ralado', false, 39.90, 4),              -- Doce Broto
('Abobrinha Vegana', 'Molho de tomate, abobrinha grelhada e queijo vegano', false, 55.00, 5),   -- Vegana Grande
('Portuguesa', 'Molho de tomate, presunto, ovos, cebola, ervilha e mozarela', true, 49.90, 1);  -- Salgada Grande

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT tb_pizzas.*, tb_categorias.*
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.*, tb_categorias.*
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo_pizza = "Salgada";