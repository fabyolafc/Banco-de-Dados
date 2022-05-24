create database db_quitanda;

use db_quitanda;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
	tipo varchar(255),
    quantidade varchar(255),
    valor decimal(5,2),
    
	primary key (id)
);

select * from tb_produtos;

insert into tb_produtos(nome, tipo, quantidade, valor)values("Abacaxi","Fruta",5,4.0);
insert into tb_produtos(nome, tipo, quantidade, valor)values("Acerola","Fruta",6,3.0);
insert into tb_produtos(nome, tipo, quantidade, valor)values("Aipim","Legume",4,6.0);
insert into tb_produtos(nome, tipo, quantidade, valor)values("Batata","Legume",3,5.0);
insert into tb_produtos(nome, tipo, quantidade, valor)values("Alecrim","Verdura",8,5.0);
insert into tb_produtos(nome, tipo, quantidade, valor)values("Brócolis","Verdura",7,5.0);

select * from tb_produtos;

select * from tb_produtos where tipo = "Fruta";

select * from tb_produtos where tipo = "Legume";

update tb_produtos set quantidade = 9 where id = 2;

select * from tb_produtos;

delete from tb_produtos where tipo = "Verdura";

select * from tb_produtos;






