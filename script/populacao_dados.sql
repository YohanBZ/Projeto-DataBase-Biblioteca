#Comando para utilizar o banco biblioteca 
use biblioteca; 

##Populando tabela Autores com suas informações  
INSERT INTO `autores`(id, nome, data_nascimento, nacionalidade) VALUES
(1, 'Jorginho', '1960-01-01', 'Brasileiro'),
(2, 'Juldrene', '1970-02-02', 'Argentino'),
(3, 'Eurizona', '1980-03-03', 'Uruguaio'),
(4, 'Ostralha', '1990-04-04', 'Chileno'),
(5, 'Xercilia', '2000-05-05', 'Paraguaio');


#Populando tabela endereços com os endereços de cada usuario  
INSERT INTO `enderecos`(id, rua, numero, cep, bairro, cidade, estado, pais) VALUES
(1, 'Rua Borboletas Psicodélicas', 49, '78930-628', 'Psicodelico', 'Curitiba', 'PR', 'Brasil'),
(2, 'Rua Travessa Sem Destino', 201, '78932-000', 'SemHistória', 'Curitba', 'PR', 'Brasil'),
(3, 'Rua Invocação do Mal', 666, '72000-666', 'Maldestino', 'Curitba', 'PR', 'Brasil'),
(4, 'Rua Jacinto Machado', 69, '69006-001', 'Pinopolis', 'Curitba', 'PR', 'Brasil'),
(5, 'Rua Frutas Verdes', 500, '74457-030', 'arvaria', 'Curitba', 'PR', 'Brasil');


#Populando tabela editora com as informações de cada editora
INSERT INTO `editoras`(id, nome, cnpj, telefone) VALUES
(1, 'Editora Boa Morte', 356471878, 11111111),
(2, 'Editora LeYa', 78677225, 22222222),
(3, 'Editora ProvesLer', 66326783, 33333333),
(4, 'Editora Quarto', 24343044, 44444444),
(5, 'Editora SabiTudo', 52535055, 55555555);


#Populando tabela Livors com suas informações 
INSERT INTO `livros`VALUES
(1, 'Como falar com os mortos: um guia prático', 200, '2000-01-01', 1, 'Portugues', 123456789, 'Ficção', 1, 1),
(2, 'Como defecar na floresta', 300, '2001-02-02', 1, 'Inglês', 234567891, 'Aventura', 2, 2),
(3, 'Programador Problematico', 250, '2002-03-03', 2, 'Espanhol', 345678912, 'Romance', 3, 3),
(4, 'Mais uma noite besta na cidade de merda', 350, '2003-04-04', 2, 'Portugues', 456789123, 'Terror', 4, 4),
(5, 'Pintou Clima', 400, '2004-05-05', 3, 'Inglês', 567891234, 'Comédia', 5, 5);



#Populando tabela cadastro com as informações de cada usuario 
INSERT INTO `cadastros` VALUES
(1, 'Boga Mendez', '8927384928', '1990-01-01', 'Portugues', '1111111111', 'BigBoga@hotmail.com', 'senha123', 1),
(2, 'Chaw lee', '98998277289', '1991-02-02', 'Corea', '2222222222', 'ChawLee@hotmail.com', 'senhaforte', 2),
(3, 'Tu Morrow', '3456788830', '1992-03-03', 'Britânico', '3333333333', 'tuMorrow@gmail.com', 'invisivel32', 3),
(4, 'Charmayanne de Luz', '1434542331', '1993-04-04', 'Brasileiro', '4444444444', 'Charmay@gmail.com', 'bloqueado89', 4),
(5, 'Kaelisson Bruce Nuno', '3011818298', '1994-05-05', 'Brasileiro', '5555555555', 'BruceKN@gmail.com', 'loucodoFreeFire', 5);

#Populando tabela usuarios com suas informações  
INSERT INTO `usuarios` VALUES
(1, 2017, false, 1),
(2, 2015, false, 2),
(3, 2022, true, 3),
(4, 2020, false, 4),
(5, 2019, true, 5);


#Populando novamente tabela endereços com os endereços de cada funcionario 
INSERT INTO `enderecos`(id, rua, numero, cep, bairro, cidade, estado, pais) VALUES
(6, 'Rua Manuel Gomes', 888, '88900-453', 'Caneta', 'Curitiba', 'PR', 'Brasil'),
(7, 'Rua Bino', 10, '12330-413', 'Caminhos', 'Curitiba', 'PR', 'Brasil'),
(8, 'Rua Linux', 234, '88920-253', 'Note', 'Curitiba', 'PR', 'Brasil'),
(9, 'Rua Piriquito', 76, '83900-333', 'Gaiolinha', 'Curitiba', 'PR', 'Brasil'),
(10, 'Rua Amazonas', 112, '48950-000', 'Mata', 'Curitiba', 'PR', 'Brasil');


#Populando novamente tabela cadastro com as informações de cada funcionario 
INSERT INTO `cadastros` VALUES
(6, 'Henry Vaca', '3894988829', '2004-01-01', 'Portugues', '6666666666', 'HenryV@hotmail.com', 'naofoidessavez', 6),
(7, 'Franco Foda', '983829188', '1997-03-04', 'Brasileiro', '7777777777', 'FodaF@hotmail.com', 'tentenovamente', 7),
(8, 'Asano Lima', '9812318111', '1998-02-01', 'Brasileiro', '8888888888', 'AssanoL@gmail.com', 'agoravai', 8),
(9, 'Kanno Gomes', '8329382983', '1993-04-08', 'Brasileiro', '9999999999', 'Kanno@gmail.com', 'password1', 9),
(10, 'Cornelios Braga', '8934852868', '2001-05-12', 'Brasileiro', '1010101010', 'Cornel@gmail.com', 'esqueciasenha', 10);


#Populando tabela funcionarios com suas informações   
INSERT INTO `funcionarios`VALUES
(1, 1500.00, 'Bibliotecario', '2020-01-01', 6),
(2, 1500.00, 'Bibliotecario', '2021-02-02', 7),
(3, 2300.00, 'Segurança', '2022-03-03', 8),
(4, 4000.00, 'Sub-Gerente', '2021-04-04', 9),
(5, 5000.00, 'Gerente', '2022-05-05', 10);


#Populando tabela emprestimo com suas informações de cada emprestimo 
INSERT INTO `emprestimos` VALUES
(1, '2022-01-01 10:00:00', '2022-01-15 10:00:00', false, 1, 1, 2),
(2, '2022-02-01 11:00:00', '2022-02-15 11:00:00', true, 2, 2, 1),
(3, '2022-03-01 12:00:00', '2022-03-15 12:00:00', false, 3, 3, 1),
(4, '2022-04-01 13:00:00', '2022-04-15 13:00:00', true, 4, 4, 5),
(5, '2022-05-01 14:00:00', '2022-05-15 14:00:00', false, 5, 5, 4);