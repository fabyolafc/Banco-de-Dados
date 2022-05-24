create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    nome_produto varchar(255),
    valor decimal(5,2),
    marca varchar(255),
    quantidade int,
    cor varchar(255),
    
	primary key (id)
);

select * from tb_produtos;

insert into tb_produtos(nome_produto,valor,marca,quantidade,cor)values("Camiseta",100.55,"Nike",10,"Bege");
insert into tb_produtos(nome_produto,valor,marca,quantidade,cor)values("Calça",120.50,"Adidas",5,"Preta");
insert into tb_produtos(nome_produto,valor,marca,quantidade,cor)values("Meia",200.50,"Supreme",2,"Vermelho");

select * from tb_produtos;

select * from tb_produtos where valor > 500;

select * from tb_produtos where valor < 500;

update tb_produtos set marca = "Gucci" where id = 3;

select * from tb_produtos;


