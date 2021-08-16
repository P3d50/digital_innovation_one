--funcoes
create or replace function funSomar(integer,integer)
returns integer
security definer
--returns null on null input
called on null input
language sql
as $$
	select coalesce($1,0)+coalesce($2,0);
$$;	


select funSomar(1,100);
select funSomar(1,null);

select coalesce(null,null,'digital','pedro')


------------------------------------------------------------------

create or replace function bancos_add(p_numero integer, p_nome varchar, p_ativo boolean)
returns integer
security invoker
language plpgsql
called on null input 
as $$
declare variavel_id integer;
begin
	if p_numero is null or p_nome is null or p_ativo is null then
		return 0;
	end if;
	if variavel_id is null then
		insert into banco(numero,nome,ativo)
		values(p_numero,p_nome, p_ativo);
	else
		return 0;
	end if;
	select into variavel_id numero
	from banco
	where numero = p_numero;
	return variavel_id;
end;$$;

select bancos_add(5432,'banco novo',false);

select numero,nome , ativo from banco where numero= 5432;
