--view
select numero,nome,ativo
from banco;

create or replace view vw_banco as(
	select numero,nome,ativo
	from banco
);

select numero,nome,ativo from vw_banco;


create or replace view vw_bancos2(banco_numero,banco_nome,banco_ativo) as(
	select numero,nome,ativo
	from banco
);

select banco_numero,banco_nome,banco_ativo
from vw_bancos2;

insert into vw_bancos2(banco_numero,banco_nome,banco_ativo)
values(51,'Boa IDea',true);
select numero,nome,ativo from banco where numero = 51;
update vw_bancos2 set banco_ativo = false where banco_numero = 51;
delete from vw_bancos2 where banco_numero = 51;