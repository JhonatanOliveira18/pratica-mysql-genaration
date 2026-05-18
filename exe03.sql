CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    matricula VARCHAR(10) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    nota DECIMAL(4,2)
);

INSERT INTO tb_estudantes (nome, matricula, data_nascimento, nota) VALUES
('Cassio Ramos', '20260001', '2010-04-12', '9.00'),
('Ronaldo Nazário', '20260002', '2011-08-23', '8.00'),
('Emerson Sheik', '20260003', '2010-01-15', '9.00'),
('Gustavo Henrique', '20260004', '2012-11-05', '7.00'),
('Paolo Guerreiro', '20260005', '2009-06-30', '10.00'),
('Angel Romero', '20260006', '2011-03-14', '8.00'),
('Rodrigo Afonso', '20260007', '2010-09-18', '4.00'),
('Gustavo Pereira Sobrinho', '20260008', '2012-02-27', '2.00');

SELECT * FROM tb_estudantes WHERE nota > 7.00;

SELECT * FROM tb_estudantes WHERE nota < 7.00;

UPDATE tb_estudantes 
SET nota = 10
WHERE id = 1; 

