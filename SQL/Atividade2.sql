CREATE DATABASE db_ecommerce_casa;

USE db_ecommerce_casa;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255),
    estoque INT,
    preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, categoria, estoque, preco)
VALUES ("Aspirador de Pó", "Limpeza", 15, 350.00);

INSERT INTO tb_produtos(nome, categoria, estoque, preco)
VALUES ("Liquidificador Philips", "Cozinha", 20, 280.00);

INSERT INTO tb_produtos(nome, categoria, estoque, preco)
VALUES ("Jogo de Panelas Tramontina", "Cozinha", 10, 750.00);

INSERT INTO tb_produtos(nome, categoria, estoque, preco)
VALUES ("Conjunto de Toalhas", "Banho", 40, 89.90);

INSERT INTO tb_produtos(nome, categoria, estoque, preco)
VALUES ("Edredom Queen", "Cama", 25, 230.00);

INSERT INTO tb_produtos(nome, categoria, estoque, preco)
VALUES ("Air Fryer Mondial", "Cozinha", 18, 420.00);

INSERT INTO tb_produtos(nome, categoria, estoque, preco)
VALUES ("Tábua de Passar Roupa", "Lavanderia", 12, 120.00);

INSERT INTO tb_produtos(nome, categoria, estoque, preco)
VALUES ("Cafeteira Elétrica Britânia", "Cozinha", 30, 160.00);


SELECT * FROM tb_produtos WHERE preco > 500;


SELECT * FROM tb_produtos WHERE preco < 500;


UPDATE tb_produtos SET preco = 999.99 WHERE id = 3;


SELECT * FROM tb_produtos;
