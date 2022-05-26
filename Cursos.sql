create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias(
	id bigint auto_increment,
	periodo varchar(255),

	primary key (id)
);

create table tb_cursos(
	id bigint auto_increment,
    nome varchar(255),
    valor decimal(10,2),
    periodo_id bigint,
    
    primary key (id),
	foreign key (periodo_id) references tb_categorias(id)
 );
 
insert into tb_categorias(periodo)values("Integral");
insert into tb_categorias(periodo)values("Noturno");
select * from tb_categorias;

insert into tb_cursos(nome,valor,periodo_id)values("TADS",500.00,2);
insert into tb_cursos(nome,valor,periodo_id)values("Ciência da Computação",850.00,1);
insert into tb_cursos(nome,valor,periodo_id)values("Sistemas de Informação",550.00,2);
select * from tb_cursos;

select * from tb_cursos where valor > 500.00;
select * from tb_cursos where valor > 600.00 and valor < 1000.00;
select * from tb_cursos where nome like "%j%";
 
select * from tb_cursos inner join tb_categorias on tb_categorias.id = tb_cursos.periodo_id;

select * from tb_cursos inner join tb_categorias on tb_categorias.id = tb_cursos.periodo_id and periodo = "Noturno";
    