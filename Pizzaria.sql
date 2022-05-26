create database db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_categorias(
	id bigint auto_increment,
    tamanho varchar(255),
	
	primary key (id)
);

create table tb_pizzas(
	id bigint auto_increment,
    nome varchar(255),
    valor decimal(10,2),
    tamanho_id bigint,
	
	primary key (id),
    foreign key (tamanho_id) references tb_categorias (id)
);

insert into tb_categorias(tamanho)values("P");
insert into tb_categorias(tamanho)values("M");
insert into tb_categorias(tamanho)values("G");
select * from tb_categorias;

insert into tb_pizzas(nome,valor,tamanho_id)values("Pizza-Frango",39.00,1);
insert into tb_pizzas(nome,valor,tamanho_id)values("Pizza-Calabreza",47.00,2);
insert into tb_pizzas(nome,valor,tamanho_id)values("Pizza-Portuguêsa",60.00,3);
insert into tb_pizzas(nome,valor,tamanho_id)values("Pizza-Bacon",55.00,2);
select * from tb_pizzas;

select * from tb_pizzas where valor > 45;
select * from tb_pizzas where valor > 50 and valor < 100;
select * from tb_pizzas where nome like "%M%";

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.tamanho_id;

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.tamanho_id and tamanho = "M";
