CREATE DATABASE db_servicorh;

USE db_servicorh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    setor VARCHAR(255) NOT NULL
);

INSERT INTO tb_colaboradores(nome, cargo, salario, setor) VALUES
('Yuri Alberto', 'Desenvolvedor Java Junior', 4500.00, 'Desenvolvimento'),
('Matheus Bidu', 'Analista de Suporte', 2800.50, 'Tecnologia'),
('Memphis Depay', 'Gerente de Projetos', 9500.00, 'Gestão'),
('Hugo Souza', 'Analista de Prevenção a Fraudes N2', 1900.00, 'Operações'),
('Fabio Santos', 'Designer UX/UI', 5100.00, 'Produto');

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 2500.00 WHERE id = 4;