CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(500)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
("Cortes Bovinos", "Carnes de boi nobres e populares"),
("Cortes Suínos", "Carnes provenientes de porco"),
("Aves", "Frango e derivados"),
("Defumados", "Carnes preparadas e defumadas"),
("Especiais", "Cortes premium e selecionados");

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    peso_kg DECIMAL(10,2),
    marca VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, valor, peso_kg, marca, categoria_id) VALUES
("Picanha Premium", 129.90, 1.0, "Black Angus", 1),
("Alcatra", 68.00, 1.5, "Friboi", 1),
("Costelinha Suína", 42.00, 1.2, "Sadia", 2),
("Lombo Suíno", 55.00, 1.0, "Seara", 2),
("Filé de Frango", 29.90, 1.0, "Sadia", 3),
("Coxa e Sobrecoxa", 17.50, 1.0, "Aurora", 3),
("Linguiça Defumada", 22.00, 0.7, "Perdigão", 4),
("Tomahawk Especial", 149.00, 1.2, "Wessel", 5);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%" OR nome LIKE "%C%";

SELECT tb_produtos.nome AS Produto, tb_produtos.valor, tb_categorias.nome AS Categoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome AS Produto, tb_produtos.valor, tb_categorias.nome AS Categoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Aves";
