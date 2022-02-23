-- apagar o banco de dados

drop database dbpets;

-- criar o banco de dados dbpets

create database dbpets;

-- visualizar o banco de dados

show databases;

-- acessando o banco de dados dbpets

use dbpets;

-- visualizando as tabelas do banco de dados

show tables;

-- criando as tabelas do banco de dados

create table tbclientes(
idcliente int,
nome varchar(100),
cpf char(14),
dataNasc date,
genero char(1),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone char(10),
email varchar(100)
);

create table tbfornecedores(
idfornecedor int(11),
razaosocial varchar(100),
nomefantasia varchar(100),
cnpj varchar (15),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone varchar(11)
);

create table tbprodutos(
idproduto int (11),
codigodebarras varchar(13),
nomeproduto varchar(100),
marca varchar(100),
tipo varchar(100),
fornecedor varchar(100),
valordecompra decimal(8,2),
valordavenda decimal(8,2),
quantidadeEmEstoque int(11),
fornecedores_idfornecedor int(11)
);

create table tbcompras_has_produtos(
compras_idcompra int(11),
produtos_idproduto int(11)
);

create table tbcompras(
idcompra int(11),
produtos varchar(100),
cpf_cliente varchar(100),
cpf_funcionario varchar(100),
valortotal decimal(8,2),
dataAtual date,
funcionarios_idFuncionario int(11),
clientes_idCliente int(11)
);

create table tbclientes(
idCliente int(11),
nome varchar(100),
cpf varchar(11),
dataDeNascimento date,
genero char(1),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone varchar(11),
email varchar(100)
);

create table tbsercicos_has_clientes(
servicos_idServico int(11),
clientes_idCliente int(11)
);

create table tbanimais(
idAnimal int(11),
nomeAnimal varchar(100),
especie varchar(100),
raca varchar(100),
genero char(1),
dataDeNascimento date,
clientes_idCliente int(11)
);

create table tbanimais_has_servicos(
animais_idAnimal int(11),
animais_clientes_idCliente int(11),
servicos_idServico int(11)
);

create table tbservicos(
idServico int(11),
descricaoServico varchar(100),
valorServico decimal(8,2),
tempoServico time
);

create table tbfuncionarios(
idFuncionario int(100),
nome varchar(100),
cargo varchar(100),
cpf varchar(100),
endereco varchar(100),
telefone varchar(11),
email varchar(100),
cargofuncionario_idCargo int(11)
);

create table tbcargofuncionario(
idCargo int(11),
cargo varchar(100),
salario decimal (8,2)
);

create table tbfuncionarios_has_servicos
funcionarios_idFuncionario int(11),
servicos_idServico int(11)
);



--visualizando as tabelas do banco de dados

show tables;

--visualizar a estrutura das tabelas criadas no banco de dados

desc tbclientes;
desc tbfornecedores;
desc tbprodutos;
desc tbcompras_has_produtos;
desc tbcompras;
desc tbclientes;
desc tbsercicos_has_clientes;
desc tbanimais;
desc tbanimais_has_servicos;
desc tbservicos;
desc tbfuncionarios;
desc tbcargofuncionario;
desc tbfuncionarios_has_servicos;


