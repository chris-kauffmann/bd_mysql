CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
massa VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255),
tamanho VARCHAR(255),
valor DECIMAL (6,2),
categorias_id BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo,massa)
VALUES ("Salgado", "Pan");

INSERT INTO tb_categorias(tipo,massa)
VALUES ("Doce", "Fina");

INSERT INTO tb_categorias(tipo,massa)
VALUES ("Salgado", "Fina");

INSERT INTO tb_categorias(tipo,massa)
VALUES ("Doce", "Pan");

INSERT INTO tb_categorias(tipo,massa)
VALUES ("Salgado", "Normal");

INSERT INTO tb_categorias(tipo,massa)
VALUES ("Doce", "Normal");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas(sabor, tamanho, valor, categorias_id)
VALUES ("Mussarela", "Grande", 60.00, 1);

INSERT INTO tb_pizzas(sabor, tamanho, valor, categorias_id)
VALUES ("Pepperoni", "Grande", 65.00, 1);

INSERT INTO tb_pizzas(sabor, tamanho, valor, categorias_id)
VALUES ("Brigadeiro", "Grande", 70.00, 2);

INSERT INTO tb_pizzas(sabor, tamanho, valor, categorias_id)
VALUES ("Catuperoni", "Gigante", 130.00, 1);

INSERT INTO tb_pizzas(sabor, tamanho, valor, categorias_id)
VALUES ("Romeu e Julieta", "Brotinho", 40.00, 6);

INSERT INTO tb_pizzas(sabor, tamanho, valor, categorias_id)
VALUES ("Calabresa", "Média", 50.00, 5);

INSERT INTO tb_pizzas(sabor, tamanho, valor, categorias_id)
VALUES ("Torta de Limão", "Grande", 70.00, 4);

INSERT INTO tb_pizzas(sabor, tamanho, valor, categorias_id)
VALUES ("Margherita", "Gigante", 100.00, 3);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 50;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.id = 1;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";





