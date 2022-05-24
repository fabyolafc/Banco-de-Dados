create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255),
    idade int,
    disciplina varchar(255),
    nota decimal(5,2),
    
	primary key (id)
);

select * from tb_estudantes;

insert into tb_estudantes(nome,idade,disciplina,nota)values("Sam",17,"Matemática",8.0);
insert into tb_estudantes(nome,idade,disciplina,nota)values("Diana",18,"Português",9.0);
insert into tb_estudantes(nome,idade,disciplina,nota)values("Dean",16,"história",6.0);

select * from tb_estudantes;

select * from tb_estudantes where nota > 7.0;

select * from tb_estudantes where nota < 7.0;

update tb_estudantes set disciplina = "Ciências" where id = 2;

select * from tb_estudantes;




