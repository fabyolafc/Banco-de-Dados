create database db_brecho;

use db_brecho;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
	cor varchar(255),
    marca varchar(255),
    valor decimal(5,2),
    
	primary key (id)
);

select * from tb_produtos;

insert into tb_produtos(nome,cor,marca,valor)values("Blusa","Vemelho","Nike",40.00);
insert into tb_produtos(nome,cor,marca,valor)values("Calça","Preto","Gucci",90.00);
insert into tb_produtos(nome,cor,marca,valor)values("Tenis","Rosa","Adidas",60.00);

select * from tb_produtos;

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor < 50;

select * from tb_produtos where id = 2;

update tb_produtos set cor = "Azul" where id = 1;

select * from tb_produtos;

delete from tb_produtos where id = 2;

delete from tb_produtos where id = 3;

select * from tb_produtos;
