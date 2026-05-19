CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
	nivel INT,
    poder_ataque INT,
	poder_defesa INT,
    vida INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, especialidade) VALUES
('Guerreiro', 'Combate corpo a corpo e alta resistência'),
('Mago', 'Dano mágico à distância e controle de grupo'),
('Arqueiro', 'Ataques rápidos à distância e precisão'),
('Assassino', 'Alta mobilidade e dano crítico furtivo'),
('Paladino', 'Suporte com cura e alta defesa física/mágica');

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, vida, classe_id) VALUES
('Lune', 45, 2600, 1800, 3000, 1),      
('Sciel', 50, 3200, 1100, 1500, 2),      
('Gustave', 38, 2100, 1300, 1800, 3),        
('Maelle', 55, 3500, 950, 1400, 4),       
('Alicia', 42, 1600, 2800, 3500, 5),       
('Frieren', 30, 1900, 1500, 2500, 1),       
('Renoir', 60, 4100, 1200, 1600, 2),     
('Clea', 52, 2900, 1400, 1900, 3); 

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.*, tb_classes.*
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.*, tb_classes.*
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome_classe = "Arqueiro";
