create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
	id bigint auto_increment,
	nome_categoria varchar(255),
    setor varchar(255),

	primary key (id)
);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    valor decimal(10,2),
    quantidade int,
    marca varchar(255),
    categoria_id bigint,
    
    primary key (id),
	foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_categorias(nome_categoria,setor)values("Anti-Inflamatório","Medicamento");
insert into tb_categorias(nome_categoria,setor)values("Suplemento","Fitness");
insert into tb_categorias(nome_categoria,setor)values("Atibiotico","Medicamento");

insert into tb_produtos(nome,valor,quantidade,marca,categoria_id)values("Paracetabem",30.00,10,"Genérico",1);
insert into tb_produtos(nome,valor,quantidade,marca,categoria_id)values("Anoxicimol",100.00,10,"Genérico",3);
insert into tb_produtos(nome,valor,quantidade,marca,categoria_id)values("Creatina",180.00,5,"Genérico",2);

select * from tb_categorias;
select * from tb_produtos;

select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor > 5.00 and valor < 60.00;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id and setor = "Medicamento";

