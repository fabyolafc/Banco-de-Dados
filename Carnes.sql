create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
	id bigint auto_increment,
	marca varchar(255),

	primary key (id)
);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    valor decimal(10,2),
    marca_id bigint,
    
    primary key (id),
	foreign key (marca_id) references tb_categorias(id)
);

insert into tb_categorias(marca)values("Sadia");
insert into tb_categorias(marca)values("Seara");
insert into tb_categorias(marca)values("Pamplona");
select * from tb_categorias;

insert into tb_produtos(nome,valor,marca_id)values("Frango",19.00,1);
insert into tb_produtos(nome,valor,marca_id)values("Carne Bovina",70.00,2);
insert into tb_produtos(nome,valor,marca_id)values("Carne suina",55.00,3);
insert into tb_produtos(nome,valor,marca_id)values("Mortandela",8.00,1);
select * from tb_produtos;

select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor > 50.00 and valor < 150.00;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.marca_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.marca_id and marca = "Sadia";
