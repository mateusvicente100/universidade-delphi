create database "firedac-samples"
	with owner postgres;

create table clientes(
    id serial not null,
    nome varchar(100) not null,
    sobrenome varchar(100) not null,
    constraint pk_clientes primary key (id)
)