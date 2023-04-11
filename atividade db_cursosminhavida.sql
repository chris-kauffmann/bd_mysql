CREATE DATABASE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categorias VARCHAR(255),
nivel VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
carga_horaria INT,
valor DECIMAL(6,2),
classificacao INT,
categorias_id BIGINT, 
PRIMARY KEY(id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(categorias,nivel)
VALUES ("Desenvolvimento", "Iniciante");

INSERT INTO tb_categorias(categorias,nivel)
VALUES ("Desenvolvimento", "Intermediário");

INSERT INTO tb_categorias(categorias,nivel)
VALUES ("Desenvolvimento", "Avançado");

INSERT INTO tb_categorias(categorias,nivel)
VALUES ("TI e Software", "Iniciante");

INSERT INTO tb_categorias(categorias,nivel)
VALUES ("TI e Software", "Intermediário");

INSERT INTO tb_categorias(categorias,nivel)
VALUES ("TI e Software", "Avançado");

SELECT * FROM tb_categorias; 

ALTER TABLE tb_cursos
MODIFY COLUMN carga_horaria DECIMAL(3,1);

ALTER TABLE tb_cursos
MODIFY COLUMN classificacao DECIMAL(3,1);

INSERT INTO tb_cursos(nome, carga_horaria, valor, classificacao, categorias_id)
VALUES("C# Essencial 2023(.NET 7)", 37, 22.90, 4.7,4);

INSERT INTO tb_cursos(nome, carga_horaria, valor, classificacao, categorias_id)
VALUES("DevOps: AWS", 6, 27.90, 4.5, 5);

INSERT INTO tb_cursos(nome, carga_horaria, valor, classificacao, categorias_id)
VALUES("Terraform no Azure", 19, 22.90, 4.6, 6);

INSERT INTO tb_cursos(nome, carga_horaria, valor, classificacao, categorias_id)
VALUES("Aprendendo a programar em Java", 6.5, 27.90, 4.4, 1);

INSERT INTO tb_cursos(nome, carga_horaria, valor, classificacao, categorias_id)
VALUES("Desenvolvimento Android", 54, 27.90, 4.8, 2);

INSERT INTO tb_cursos(nome, carga_horaria, valor, classificacao, categorias_id)
VALUES("ChatGpt4 Masterclass", 2, 22.90, 4.6, 3);

INSERT INTO tb_cursos(nome, carga_horaria, valor, classificacao, categorias_id)
VALUES("Controle de Vendas Desktop com Java e MySQL", 12.5, 22.90, 4.8, 2);

INSERT INTO tb_cursos(nome, carga_horaria, valor, classificacao, categorias_id)
VALUES("Angular + Spring Boot", 16, 22.90, 4.6, 3);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE valor > 20;

SELECT * FROM tb_cursos WHERE valor BETWEEN 10 AND 30;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categorias_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categorias_id = tb_categorias.id
WHERE tb_cursos.nome LIKE "%Java%";
