CREATE DATABASE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255),
tipo VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
valor DECIMAL(6,2),
qtd_estoque INT,
industria VARCHAR(255),
categorias_id BIGINT,

PRIMARY KEY(id), 
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_categorias(descricao,tipo)
VALUES ("Medicamento", "Controlado");

INSERT INTO tb_categorias(descricao,tipo)
VALUES ("Medicamento", "Genérico");

INSERT INTO tb_categorias(descricao,tipo)
VALUES ("Medicamento", "Fitoterápicos");

INSERT INTO tb_categorias(descricao,tipo)
VALUES ("Medicamento", "Homeopático");

INSERT INTO tb_categorias(descricao,tipo)
VALUES ("Cosmético", "Sem restrição");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome, valor, qtd_estoque, industria, categorias_id)
VALUES ("Rivotril 2mg", 30.90, 55, "Biopas",1 );

INSERT INTO tb_produtos(nome, valor, qtd_estoque, industria, categorias_id)
VALUES ("Rosuvastatina Calcica 10mg", 42, 20, "EMS",2 );

INSERT INTO tb_produtos(nome, valor, qtd_estoque, industria, categorias_id)
VALUES ("Ansiodron", 82.99, 100, "Weleda",3 );

INSERT INTO tb_produtos(nome, valor, qtd_estoque, industria, categorias_id)
VALUES ("Calendula Officinalis 6CH", 37.60, 10, "Botica Alternativa",4 );

INSERT INTO tb_produtos(nome, valor, qtd_estoque, industria, categorias_id)
VALUES ("Protetor Solar 50g", 61.19, 35, "Bioré",5 );

INSERT INTO tb_produtos(nome, valor, qtd_estoque, industria, categorias_id)
VALUES ("Ritalina 10mg", 80.82, 2, "Novartis",1 );

INSERT INTO tb_produtos(nome, valor, qtd_estoque, industria, categorias_id)
VALUES ("Bissulfato de Clopidogrel 75mg", 41.19, 23, "EMS",2 );

INSERT INTO tb_produtos(nome, valor, qtd_estoque, industria, categorias_id)
VALUES ("Desodorante Stick 45g", 25.90, 14, "Secret",5 );

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.id = 5;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";