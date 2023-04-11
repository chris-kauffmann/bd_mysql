CREATE DATABASE db_construindo_vidas;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),
departamento VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
valor DECIMAL(6,2),
qtd_estoque INT, 
marca VARCHAR(255),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria,departamento)
VALUES ("Hidráulica","Banheiro");

INSERT INTO tb_categorias (categoria,departamento)
VALUES ("Hidráulica","Cozinha");

INSERT INTO tb_categorias (categoria,departamento)
VALUES ("Marcenaria","Quarto");

INSERT INTO tb_categorias (categoria,departamento)
VALUES ("Marcenaria","Sala");

INSERT INTO tb_categorias (categoria,departamento)
VALUES ("Elétrica","Quarto");

INSERT INTO tb_categorias (categoria,departamento)
VALUES ("Elétrica","Sala");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome, valor, qtd_estoque, marca, categorias_id)
VALUES("Filtro de Linha", 39.90, 25, "Lexman",5);

INSERT INTO tb_produtos(nome, valor, qtd_estoque, marca, categorias_id)
VALUES("Eletroduto Corrugado", 74.90, 30, "Lexman",6);

INSERT INTO tb_produtos(nome, valor, qtd_estoque, marca, categorias_id)
VALUES("Torneira Parede Bica Alta", 152.90, 18, "Delinia",2);

INSERT INTO tb_produtos(nome, valor, qtd_estoque, marca, categorias_id)
VALUES("Aquecedor Elétrico", 549.90, 10, "Cardal",1);

INSERT INTO tb_produtos(nome, valor, qtd_estoque, marca, categorias_id)
VALUES("Painel Ripado 270cmX1,5cmX6cm", 174.90, 39, "Moldurama",4);

INSERT INTO tb_produtos(nome, valor, qtd_estoque, marca, categorias_id)
VALUES("Piso Laminado 136X21,7cm m²", 54.90, 62, "Artens",3);

INSERT INTO tb_produtos(nome, valor, qtd_estoque, marca, categorias_id)
VALUES("Chuveiro Eletronico 220V 6800W", 132.89, 65, "Hydra",1);

INSERT INTO tb_produtos(nome, valor, qtd_estoque, marca, categorias_id)
VALUES("Valvula Cromada 3.1/2", 69.90, 140, "Equation",2);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 100;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.id=1;