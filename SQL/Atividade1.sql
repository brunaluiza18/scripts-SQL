CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255),
    salario DECIMAL(10,2) NOT NULL,
    setor VARCHAR(255),
    data_admissao DATE
);

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_admissao)
VALUES ("Luiza", "Assistente de ADM", 1800, "RH", "2025-04-10");

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_admissao)
VALUES ("Yuri", "desenvolvedor de Javascript", 5000, "TI", "2021-04-10");

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_admissao)
VALUES ("Felipe", "Supevisor", 4500, "RH", "2021-10-31");

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_admissao)
VALUES ("Ana Souza", "Analista de RH", 3500, "RH", "2021-04-10");

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_admissao)
VALUES ("Rodrigo", "reparos", 2500, "RH", "2025-04-12");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2000 WHERE id = 1;

SELECT * FROM tb_colaboradores;









