
create database if not exists livraria;

use livraria;

create table editora (
    idEditora int not null primary key,
    nome varchar(50) not null,
    telefone varchar(20) not null,
    email varchar(50) not null,
    endereco varchar(100) not null
);

create table livro (
    idLivro int not null primary key,
    idEditora int not null,
    foreign key (idEditora)
        references editora (idEditora)
        on delete no action on update no action,
    titulo varchar(100) not null,
    autor varchar(50) not null,
    ano int not null,
    ISBN varchar(20) not null,
    preco decimal(5 , 2 ) not null
);

create table estoque (
    idLivro int not null,
    foreign key (idLivro)
        references livro (idLivro)
        on delete no action on update no action,
    quantidade int not null
);

create table cliente (
    idCliente int not null primary key,
    nome varchar(50) not null,
    telefone varchar(20) not null,
    email varchar(50) not null,
    endereco varchar(100) not null
);

create table pedido (
    idPedido int not null primary key,
    idCliente int not null,
    foreign key (idCliente)
        references cliente (idCliente)
        on delete no action on update no action,
    dataPedido date not null,
    valorPedido decimal(5 , 2 ) not null
);

create table itemPedido (
    idPedido int not null,
    foreign key (idPedido)
        references pedido (idPedido)
        on delete no action on update no action,
    idLivro int not null,
    foreign key (idLivro)
        references livro (idLivro)
        on delete no action on update no action,
    quantidade int not null,
    valorItemPedido decimal(5 , 2 ) not null
);








