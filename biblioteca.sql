create database if not exists biblioteca;
use biblioteca; 

CREATE TABLE if not exists `autores` (
  `id` INT PRIMARY KEY NOT NULL,
  `nome` VARCHAR(45) NOT NULL ,
  `data_nascimento` DATE NOT NULL,
  `nacionalidade` VARCHAR(20) NOT NULL
);

CREATE TABLE if not exists `enderecos` (
  `id` INT PRIMARY KEY NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `complemento` VARCHAR(10),
  `cep` VARCHAR(15) NOT NULL,
  `bairro` VARCHAR(25) NOT NULL,
  `cidade` VARCHAR(25) NOT NULL,
  `estado` CHAR(2) NOT NULL,
  `pais` VARCHAR(25) NOT NULL
);

CREATE TABLE if not exists `editoras` (
  `id` INT PRIMARY KEY NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cnpj` INT NOT NULL,
  `telefone` INT NOT NULL
);

CREATE TABLE if not exists `livros` (
  `id` INT PRIMARY KEY NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `qtd_paginas` INT ,
  `ano_publicacao` DATE ,
  `edicao` INT ,
  `idioma` VARCHAR(34) NOT NULL,
  `isbn` INT NOT NULL,
  `genero` VARCHAR(15),
  `id_autor_fk` INT,
  `id_editora_fk` INT,
  FOREIGN KEY (id_autor_fk) REFERENCES autores(id),
  FOREIGN KEY (id_editora_fk) REFERENCES editoras(id)
);

CREATE TABLE if not exists `cadastros` (
  `id` INT PRIMARY KEY NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cpf` CHAR(11) NOT NULL,
  `data_nasc` DATE NOT NULL,
  `nacionalidade` VARCHAR(20) NOT NULL,
  `telefone` CHAR(15) NOT NULL,
  `email` VARCHAR(20) NOT NULL,
  `senha` VARCHAR(18) NOT NULL,
  `id_endereco_fk` INT,
  FOREIGN KEY (id_endereco_fk) REFERENCES enderecos(id)
);

CREATE TABLE if not exists `usuarios` (
  `id` INT PRIMARY KEY NOT NULL,
  `ano_adessao` INT NOT NULL,
  `bloqueado` BOOLEAN,
  `id_cadastro_fk` INT,
  FOREIGN KEY (id_cadastro_fk) REFERENCES cadastros(id)
);

CREATE TABLE if not exists `funcionarios` (
  `id` INT PRIMARY KEY NOT NULL,
  `salario` DECIMAL(9,2) ,
  `cargo` VARCHAR(20) NOT NULL,
  `ano_admissao` DATE NOT NULL,
  `id_cadastro_fk` INT,
  FOREIGN KEY (id_cadastro_fk) REFERENCES cadastros(id)
);

CREATE TABLE if not exists `emprestimos` (
  `id` INT PRIMARY KEY NOT NULL,
  `data_emprestimo` DATETIME NOT NULL,
  `data_devolucao` DATETIME NOT NULL,
  `devolucao` BOOLEAN,
  `id_livro_fk` INT,
  `id_usuario_fk` INT,
  `id_funcionario_fk` INT,
  FOREIGN KEY (id_livro_fk) REFERENCES livros(id),
  FOREIGN KEY (id_usuario_fk) REFERENCES usuarios(id),
  FOREIGN KEY (id_funcionario_fk) REFERENCES funcionarios(id)
);