create database loja_de_informatica;

use loja_de_informatica;

create table cliente (
	id_cliente int primary key auto_increment,
    nome varchar(105),
    email varchar(255),
    endereco varchar(255)
);

create table pedido(
	id_pedido int primary key auto_increment,
    id_cliente int not null,
    observacao varchar(255),
    foreign key (id_cliente) references cliente(id_cliente)
);

create table produto (
	id_produto int primary key auto_increment,
    descricao varchar(105),
    preco decimal(10,4),
    cfop int,
    classificacao_fiscal varchar(50)
);

create table itemPedido(
	id_pedido int not null,
    id_produto int not null,
    quantidade int,
    foreign key (id_pedido) references pedido(id_pedido),
    foreign key (id_produto) references produto(id_produto)
);

insert into cliente values 
(1, "Paulo Nogueira Neto", "paulao324@gmail.com", "Av joão pessoa, 245 - são paulo, SP"	),
(2, "Ana Paula Padrão", "aninhatim@yahoo.com.br", "Rua pão duro, 754 - goiabinha, SP"),
(3, "José Carlos Ribeiro", "carlovectra@hotmail.com", "Av santa menefreda, 1143 - tiradentes, SP"),
(4, "Remi Alvarez Canteiro", "alvater@gmail.com", "rua do baixinho, 545 - pitanga, SP"),
(5, "Kawan Rocha do vale", "kawanrochavale@gmail.com", "Av Poe. Franscisco das Chagas Fonseca, 327 - Diadema, SP");

insert into produto values 
(1, "Paquímetro", 123.958, 5102, "90.17.30.20"),
(2, "Caderno", 23.559, 5101, "48.20.20.00"),
(3, "Lápis preto", 1.569, 5106, "96.09.10.00"),
(4, "Caneta azul", 2.345, 5102, "96.08.10.00"),
(5, "Caneta preta", 2.345, 5102, "96.08.10.00");

update produto set preco = 1.896 where classificao_fiscal = "96.08.10.00";

delete from produto where id_produto = 1;



