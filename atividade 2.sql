CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
quantidade INT,
valor DECIMAL (8,2),
categoria VARCHAR(255),

PRIMARY KEY (id)

);

INSERT INTO tb_produtos(nome, quantidade, valor, categoria)
VALUES ("Mario Kart 8 Deluxe", 8, 299.00, "Jogo Nintendo Switch");

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos
SET valor = 200.90
WHERE id = 4;

SELECT * FROM tb_produtos;