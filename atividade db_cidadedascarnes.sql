CREATE DATABASE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
animal VARCHAR(255),
tipo VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
corte VARCHAR(255),
valor DECIMAL (6,2),
peso DECIMAL (6,2),
marca VARCHAR (255),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(animal,tipo)
VALUES ("Bovina","Organica");

INSERT INTO tb_categorias(animal,tipo)
VALUES ("Suina","Organica");

INSERT INTO tb_categorias(animal,tipo)
VALUES ("Avícola","Organica");

INSERT INTO tb_categorias(animal,tipo)
VALUES ("Bovina","Não Organica");

INSERT INTO tb_categorias(animal,tipo)
VALUES ("Suina","Não Organica");

INSERT INTO tb_categorias(animal,tipo)
VALUES ("Avícola","Não Organica");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(corte, valor, peso, marca, categorias_id)
VALUES ("Picanha", 154.90, 1000, "Korin",1);

INSERT INTO tb_produtos(corte, valor, peso, marca, categorias_id)
VALUES ("Peito de Frango", 22.99, 600, "Seara",3);

INSERT INTO tb_produtos(corte, valor, peso, marca, categorias_id)
VALUES ("Panceta Suina", 109.90, 1000, "Villa Germania",2);

INSERT INTO tb_produtos(corte, valor, peso, marca, categorias_id)
VALUES ("Filé Mignon", 69.98, 1000, "Swift",4);

INSERT INTO tb_produtos(corte, valor, peso, marca, categorias_id)
VALUES ("Coxa de Frango", 14.34, 1000, "Seara",6);

INSERT INTO tb_produtos(corte, valor, peso, marca, categorias_id)
VALUES ("Costela Suina", 23.99, 760, "Seara",5);

INSERT INTO tb_produtos(corte, valor, peso, marca, categorias_id)
VALUES ("Contra Filé Maturatta", 91.66, 1300, "Friboi",4);

INSERT INTO tb_produtos(corte, valor, peso, marca, categorias_id)
VALUES ("Sobrecoxa de Frango", 10.99, 600, "Seara",6);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor>50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE corte LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.id = 6;