CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(500)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
("Hidráulica", "Itens para instalação de água e encanamento"),
("Elétrica", "Produtos e materiais para instalações elétricas"),
("Acabamento", "Itens para finalização e decoração"),
("Ferramentas", "Ferramentas para obras e reparos"),
("Estrutura", "Materiais pesados de construção");

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    marca VARCHAR(255),
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, valor, quantidade, marca, categoria_id) VALUES
("Cano PVC 50mm", 32.00, 40, "Tigre", 1),
("Torneira de Parede", 89.90, 15, "Lorenzetti", 1),
("Fio Elétrico 2,5mm", 120.00, 30, "Sil", 2),
("Lâmpada LED 12W", 18.00, 100, "Philips", 2),
("Rejunte Branco", 25.00, 60, "Quartzolit", 3),
("Piso Porcelanato", 145.00, 20, "Portobello", 3),
("Martelo de Unha", 45.00, 50, "Tramontina", 4),
("Saco de Cimento 50kg", 42.00, 80, "Votorantim", 5);

SELECT * FROM tb_produtos WHERE valor > 100;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%" OR nome LIKE "%C%";

SELECT tb_produtos.nome AS Produto, tb_produtos.valor, tb_categorias.nome AS Categoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.nome AS Produto, tb_produtos.valor, tb_categorias.nome AS Categoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Hidráulica";
