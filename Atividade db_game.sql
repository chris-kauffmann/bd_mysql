CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
ataque INT,
defesa INT,
nivel INT,
classes_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)

);

INSERT INTO tb_classes (categoria)
VALUES ("Guerreiro");

INSERT INTO tb_classes (categoria)
VALUES ("Mago");

INSERT INTO tb_classes (categoria)
VALUES ("Elfo");

INSERT INTO tb_classes (categoria)
VALUES ("Anão");

INSERT INTO tb_classes (categoria)
VALUES ("Hobbit");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classes_id)
VALUES("Aragorn",3000,2500, 35,1);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classes_id)
VALUES("Gimli",2500,2200, 34,4);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classes_id)
VALUES("Legolas",4000,3500, 36,3);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classes_id)
VALUES("Gandalf",7000,6500, 37,2);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classes_id)
VALUES("Samwise",1500,1000, 34,5);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classes_id)
VALUES("Éowyn",5000,4500, 37,1);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classes_id)
VALUES("Galadriel",7100,7000, 38,3);

INSERT INTO tb_personagens(nome, ataque, defesa, nivel, classes_id)
VALUES("Radagast",5000,4500, 34,2);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.id = 1;



