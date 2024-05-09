
-- 2- Quantos oscars a Natalie Portman ganhou?
-- SELECT vencedor 
-- from filmes 
-- where nome_do_indicado = "Natalie Portman"
-- and vencedor = "Sim";
-- SELECT  count(*) from indicados_ao_oscar where nome_do_indicado = "Natalie Portman" 

-- 3- 	Amy Adams já ganhou o oscar? 

-- select count(*) from indicados_ao_oscar where nome_do_indicado = "Amy Adams";
select count(*) from indicados_ao_oscar where nome_do_indicado = "Amy Adams";