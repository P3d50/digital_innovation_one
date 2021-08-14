select nome,numero, ativo from banco;
select banco_numero,numero,nome from agencia;
select numero, nome, email from cliente;
select id, nome from tipo_transacao; 
select banco_numero,agencia_numero,numero,cliente_numero from conta_corrente;
select banco_numero agencia_numero, cliente_numero from cliente_transacoes;

select * from cliente_transacoes;



drop table if exists teste;

create table if not exists teste(
	cpf varchar(11) not null,
	nome varchar(50) not null,
	created_at timestamp not null default current_timestamp,
	primary key(cpf)
);

select * from teste;

insert into teste(cpf,nome)
values('74346737865','RaulCeichas ') on conflict (cpf) do nothing;

update teste set cpf = '34563536353' where nome ='Jose Colmeia';