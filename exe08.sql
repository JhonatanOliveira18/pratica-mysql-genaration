CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(50),
    valor DECIMAL(6,2) NOT NULL,
    quantidade_estoque INT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(categoria, descricao) VALUES
('Cimentos', 'Materiais para construção estrutural'),
('Tintas', 'Tintas e acessórios para pintura'),
('Ferramentas', 'Ferramentas manuais e elétricas'),
('Hidráulica', 'Produtos para instalações hidráulicas'),
('Elétrica', 'Materiais para instalações elétricas');

INSERT INTO tb_produtos(nome, marca, valor, quantidade_estoque, categoria_id) VALUES
('Cimento Cimentado', 'Votoran', 42.90, 120, 1),
('Areia Branca', 'Itaquareia', 15.50, 80, 1),
('Tinta Acrílica Branca 18L', 'Suvinil', 189.90, 35, 2),
('Rolo para Pintura', 'Atlas', 22.50, 50, 2),
('Furadeira 650W', 'Bosch', 299.90, 15, 3),
('Martelo', 'Tramontina', 45.00, 40, 3),
('Tubo PVC 100mm', 'Tigre', 79.90, 25, 4),
('Fio Elétrico 2,5mm 100m', 'Cobrecom', 249.90, 18, 5);

SELECT * FROM tb_produtos WHERE valor > 100;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.*
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.*, tb_categorias.*
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = 'Hidráulica';