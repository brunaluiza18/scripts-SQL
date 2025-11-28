CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(500),
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
("Clássicas da Casa", "Sabores tradicionais que todo mundo ama"),
("Premium da Chef", "Combinações diferenciadas e ingredientes especiais"),
("Doces Tentação", "Pizzas doces perfeitas para sobremesa"),
("Veggie Love", "Pizzas sem carne, leves e deliciosas"),
("Picantes do Inferno", "Sabores fortes, marcantes e bem apimentados");


CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    borda VARCHAR(100) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, valor, tamanho, borda, categoria_id) VALUES
("Mussarela", 38.00, "Média", "Tradicional", 1),
("Calabresa Acebolada", 48.00, "Grande", "Catupiry", 1),
("Carne Seca", 72.00, "Grande", "Cheddar", 2),
("Brie com Geleia", 89.00, "Média", "Sem borda", 2),
("Brigadeiro", 52.00, "Média", "Doce de Leite", 3),
("Morango com Nutella", 75.00, "Grande", "Chocolate", 3),
("Vegetariana", 49.00, "Média", "Tradicional", 4),
("Mexicana Picante", 68.00, "Grande", "Cheddar", 5);



SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%" OR nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT p.id, p.nome, p.valor, p.tamanho, p.borda, c.nome AS categoria, c.descricao
FROM tb_pizzas p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = "Doces Tentação";
