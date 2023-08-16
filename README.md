# 📚Projeto de Banco de Dados - Biblioteca

Este projeto consiste em um banco de dados para uma biblioteca, visando atender a demanda de funcionamento de uma biblioteca. A ideia é gerenciar todo o fluxo de empréstimo de livros através de um sistema de entidades e relacionamentos estruturado pensando em mapear todas as etapas.

## Ferramentas Utilizadas 🛠️

- MySQL Workbench: Utilizado para escrever, testar e implementar o código SQL para o banco de dados.
- DBDiagram: Utilizado para a modelagem do banco de dados, o que facilita a visualização e o entendimento da estrutura do banco de dados.

## Como usar 💻

```
1.Instale o MySQL Workbench em seu computador, se ainda não o tiver.
2.Clone este repositório para a sua máquina.
3.Abra o MySQL Workbench e conecte-se ao seu servidor MySQL.
4.Abra o arquivo .sql do projeto no MySQL Workbench.
5.Execute o script para criar o banco de dados e todas as suas tabelas.
6.Comece a usar, inserindo dados, fazendo consultas, atualizações etc.

```

## Utilizando com docker

Para fazer a utilização via docker existem duas possibilidades:

### Primeira utilização

```
1.Inicie seu docker
2.Abra o terminal na pasta raiz do projeto
3.Digite o comando "cd docker"
4.Faça a construção da imagem com o comando "docker build -t setup-compose ./"
5.Em seguida suba aplicação com o comando "docker-compose up"
6.Faça a conexao com MySQL Workbench na porta "3309" através do "localhost" com user root e senha:1234

OBS.: Caso tenha suporte a makefile instalado em seu SO basta executar o comando "make setup-compose" ao invéns dos passos quatro e cinco.
```

### Demais utilizações

```
1.Inicie seu docker
2.Abra o terminal na pasta raiz do projeto
3.Digite o comando "cd docker"
4.Em seguida suba aplicação com o comando "docker-compose up"
5.Faça a conexao com MySQL Workbench na porta "3309" através do "localhost" com user root e senha:1234

OBS.: Caso tenha suporte a makefile instalado em seu SO basta executar o comando "make start-compose" ao invéns dos passos quatro.
```

Este projeto visa aprimorar as habilidades em modelagem e manipulação de banco de dados, praticando a criação e gestão de várias tabelas, entidades e relações.
