create database db_rh;

use db_rh;

create table tb_colaboradores (
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    idade bigint(100),
    faculdade varchar(20),
    salario decimal(10,2),
    primary key (id)
);

insert into tb_colaboradores(nome, idade, faculdade, salario) values ("Dean", 25, "Contabilidade", 2500.00);
insert into tb_colaboradores(nome, idade, faculdade, salario) values ("Sam", 25, "Empreendedorismo", 2800.00);
insert into tb_colaboradores(nome, idade, faculdade, salario) values ("Diana", 30, "Gestão Empresarial", 1900.00);
insert into tb_colaboradores(nome, idade, faculdade, salario) values ("Leila", 22, "Administração", 1700.00);
insert into tb_colaboradores(nome, idade, faculdade, salario) values ("Monica", 29, "Letras", 2600.00);

select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000;

select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set nome = "Mônica" where id = 5;

select * from tb_colaboradores;
