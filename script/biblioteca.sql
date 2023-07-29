--criação do banco de bados biblioteca
--Usando o comando create database para criação do banco de dados 
create database if not exists biblioteca;
use biblioteca; 


----Criação da tabela autores nela ira contar todos os dados dos autores ultilizado
CREATE TABLE if not exists `autores` (
  `id` INT PRIMARY KEY NOT NULL,
  `nome` VARCHAR(45) NOT NULL ,
  `data_nascimento` DATE NOT NULL,
  `nacionalidade` VARCHAR(20) NOT NULL
);


----Criação da tabela endereço nela ira conter todos os endereços
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


----Criação da tabela editoras nela se encontra os dados das editoras dos livros
CREATE TABLE if not exists `editoras` (
  `id` INT PRIMARY KEY NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `cnpj` INT NOT NULL,
  `telefone` INT NOT NULL
);


---Criação da tabela livros nela consta informações sobre os livros disponivéis na biblioteca
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


----Criação da tabela cadastro nela ira conter todos os dados de usuarios e funcionarios
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


----Criação da tabela usuarios nela ira conter todos os dados de todas os usuarios da biblioteca
CREATE TABLE if not exists `usuarios` (
  `id` INT PRIMARY KEY NOT NULL,
  `ano_adessao` INT NOT NULL,
  `bloqueado` BOOLEAN,
  `id_cadastro_fk` INT,
  FOREIGN KEY (id_cadastro_fk) REFERENCES cadastros(id)
);


---Criação da tabela funcionario nela se encontra os dados cadastrais dos funcionarios dentro da empresa
CREATE TABLE if not exists `funcionarios` (
  `id` INT PRIMARY KEY NOT NULL,
  `salario` DECIMAL(9,2) ,
  `cargo` VARCHAR(20) NOT NULL,
  `ano_admissao` DATE NOT NULL,
  `id_cadastro_fk` INT,
  FOREIGN KEY (id_cadastro_fk) REFERENCES cadastros(id)
);

---Criação da tabela emprestimo nela temos os dados de emprestimos da biblioteca
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