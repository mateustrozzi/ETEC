/* MateusStrozzi_Ag11_TI_I: */

CREATE TABLE tbl_aluno (
    matricula_aluno INTEGER UNIQUE,
    nome VARCHAR,
    sobrenome VARCHAR,
    data_nascimento DATE,
    PRIMARY KEY (matricula_aluno, [])
);

CREATE TABLE tbl_telefone (
    id_telefone INTEGER PRIMARY KEY,
    matricula_aluno INTEGER,
    telefone_aluno VARCHAR,
    UNIQUE (id_telefone, matricula_aluno)
);

CREATE TABLE tbl_curso (
    cod_curso INTEGER PRIMARY KEY UNIQUE,
    descricao VARCHAR
);

CREATE TABLE tbl_aluno_curso (
    matricula_aluno INTEGER,
    cod_curso INTEGER,
    nota FLOAT,
    UNIQUE (matricula_aluno, cod_curso)
);
 
ALTER TABLE tbl_telefone ADD CONSTRAINT FK_tbl_telefone_3
    FOREIGN KEY (matricula_aluno???)
    REFERENCES ??? (???);
 
ALTER TABLE tbl_aluno_curso ADD CONSTRAINT FK_tbl_aluno_curso_1
    FOREIGN KEY (matricula_aluno???, cod_curso???)
    REFERENCES ??? (???);