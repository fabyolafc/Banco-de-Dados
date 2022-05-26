create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias(
	id bigint auto_increment,
	setor varchar(255),

	primary key (id)
);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    quantidade int,
    valor decimal(10,2),
    setor_id bigint,
    
    primary key (id),
	foreign key (setor_id) references tb_categorias(id)
 );
 
insert into tb_categorias(setor)values("Estoque");
insert into tb_categorias(setor)values("Produção");
insert into tb_categorias(setor)values("Vendidos");
select * from tb_categorias;

insert into tb_produtos(nome,quantidade,valor,setor_id)values("Tijolo",40,55.00,1);
insert into tb_produtos(nome,quantidade,valor,setor_id)values("Tinta",45,60.00,2);
insert into tb_produtos(nome,quantidade,valor,setor_id)values("Cimento",65,110.00,3);
insert into tb_produtos(nome,quantidade,valor,setor_id)values("Areia",20,75,3);
select * from tb_produtos;
 
select * from tb_produtos where valor > 100.00;
select * from tb_produtos where valor > 70.00 and valor < 150.00;
select * from tb_produtos where nome like "%c%";
 
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.setor_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.setor_id and setor = "Vendidos";
    