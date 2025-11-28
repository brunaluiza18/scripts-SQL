CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(500),
    dificuldade INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
("Bruxa Lunar", "Magia"),
("Feiticeira das Chamas", "Magia"),
("Guardiao da Floresta", "Defesa"),
("Arqueira Celestial", "Precisao"),
("Guerreiro das Sombras", "Agilidade");

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    energia INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, energia, classe_id) VALUES
("Alice", 3200, 1800, 95, 1),
("Rodrigo", 4100, 1500, 90, 2),
("Bruno", 2100, 2200, 100, 3),
("Luiza", 2600, 1700, 85, 4),
("Thais", 3900, 2000, 80, 5),
("Celina", 1800, 1400, 70, 1),
("Katarina", 1500, 2050, 92, 3),
("Vitoria", 4200, 1600, 88, 2);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%" OR nome LIKE "%C%";

SELECT * FROM tb_personagens  INNER JOIN tb_classes  ON tb_personagens.classe_id = tb_classes.id;

SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.energia, c.nome AS classe, c.descricao
FROM tb_personagens p INNER JOIN tb_classes c ON p.classe_id = c.id WHERE c.nome = "Arqueira Celestial";
