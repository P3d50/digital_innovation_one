--STATEMENTS

select numero,nome from banco;
select banco_numero,numero,nome from agencia;


with tbl_tmp_banco as(
	select numero,nome
	from banco
)
select numero,nome
from tbl_tmp_banco;

with params as(
	select 213 as banco_numero
),tbl_tmp_banco as(
	select numero,nome
	from banco
	join params on params.banco_numero = banco.numero
)
select numero,nome
from tbl_tmp_banco;


