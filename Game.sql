create database db_generation_game_online;

use db_generation_game_online;
create table tb_classes(
	id bigint auto_increment,
    jogo varchar(255),
	
	primary key (id)
);

create table tb_personagens(
	id bigint auto_increment,
    nome varchar(255),
    habilidade varchar(255),
    poder_de_ataque int,
    poder_de_defesa int,
    jogo_id bigint,
	
	primary key (id),
    foreign key (jogo_id) references tb_classes (id)
);

insert into tb_classes(jogo)values("Free Fire");
insert into tb_classes(jogo)values("lol");
insert into tb_classes(jogo)values("Minecraft");
select * from tb_classes;

insert into tb_personagens(nome,habilidade,poder_de_ataque,poder_de_defesa,jogo_id)
values("Jinx","Corrida",2100,1500,2);
insert into tb_personagens(nome,habilidade,poder_de_ataque,poder_de_defesa,jogo_id)
values("Lobo","Força",950,1100,3);
insert into tb_personagens(nome,habilidade,poder_de_ataque,poder_de_defesa,jogo_id)
values("Moco","Hacker",2500,1200,1);
insert into tb_personagens(nome,habilidade,poder_de_ataque,poder_de_defesa,jogo_id)
values("Kapela","Armas",2800,999,1);
select * from tb_personagens;

select * from tb_personagens where poder_de_ataque > 2000;
select * from tb_personagens where poder_de_defesa > 1000 and poder_de_defesa < 2000;
select * from tb_personagens where nome like "%C%";

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.jogo_id;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.jogo_id and jogo = "Free Fire";
