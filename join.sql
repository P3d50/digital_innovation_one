--JOIN
select numero, nome from banco;

select banco_numero,numero,nome from agencia;

select numero, nome from cliente;

select banco_numero,agencia_numero,numero,digito,cliente_numero from conta_corrente;

select id,nome from tipo_transacao;

select count(1) from banco;
select count(1) from agencia;

select banco_numero,agencia_numero,conta_corrente_numero,conta_corrente_digito,cliente_numero,valor from cliente_transacoes;



select banco.numero,banco.nome,agencia.numero,agencia.nome
from banco
join agencia on agencia.banco_numero = banco.numero;


select count( distinct banco.numero)
from banco
join agencia on agencia.banco_numero = banco.numero;

select banco.numero,banco.nome,agencia.numero,agencia.nome
from banco
left join agencia on agencia.banco_numero =banco.numero;

select agencia.numero,agencia.nome,banco.numero,banco.nome
from agencia
right join banco on banco.numero = agencia.banco_numero;

select banco.numero,banco.nome,agencia.numero,agencia.nome
from banco
full join agencia on agencia.banco_numero = banco.numero;
