CREATE DATABASE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
turma INT,
nota DECIMAL (5,2),

PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, idade, turma, nota)
VALUES("Clodoaldo", 16, 1, 6.9); 

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;
SELECT * FROM tb_estudantes;

UPDATE tb_estudantes 
SET idade = 16
WHERE id = 2;

SELECT * FROM tb_estudantes;