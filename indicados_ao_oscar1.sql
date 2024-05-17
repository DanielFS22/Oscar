-- 1) Quantas vezes Natalie Portman foi indicada ao Oscar?
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado = 'Natalie Portman';

-- 2) Quantos Oscars Natalie Portman ganhou?
SELECT COUNT(*) 
FROM indicados_ao_oscar 
WHERE nome_do_indicado = 'Natalie Portman' AND vencedor = 'sim';

-- 3) Amy Adams já ganhou algum Oscar?
SELECT COUNT(*)
FROM indicados_ao_oscar
WHERE nome_do_indicado = 'Amy Adams' AND vencedor = 'sim';

-- 4) A série de filmes Toy Story ganhou um Oscar em quais anos?
SELECT ano_cerimonia, nome_do_filme
FROM indicados_ao_oscar
WHERE nome_do_filme LIKE '%Toy Story%' AND vencedor = 'sim';

-- 5) A partir de que ano que a categoria "Actress" deixa de existir?
SELECT MAX(ano_cerimonia)
FROM indicados_ao_oscar
WHERE categoria = 'Actress';
 
-- 6) O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
SELECT nome_do_indicado, ano_cerimonia
FROM indicados_ao_oscar
WHERE categoria = 'ACTRESS' AND vencedor = 'true'
ORDER BY ano_cerimonia ASC
LIMIT 1; 

-- 7)  Na coluna/campo "Vencedor", altere todos os valores com "Sim" para 1 e todos os valores "Não" para 0.
update indicados_ao_oscar
set vencedor = 1
where vencedor = 'true';

update indicados_ao_oscar
set vencedor = 0
where vencedor = 'não';

-- 8) Em qual edição do Oscar "Crash" concorreu ao Oscar?
select id_registro, ano_cerimonia, categoria, vencedor
from indicados_ao_oscar
where nome_do_filme = 'Crash' 

-- 9) Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
update indicados_ao_oscar
set vencedor = 1
where nome_do_filme = 'To Kill a Mockingbird' and  categoria = 'ACTOR';

-- 10) O filme Central do Brasil aparece no Oscar?
SELECT ano_cerimonia, categoria, vencedor, id_registro 
FROM indicados_ao_oscar 
WHERE nome_do_filme = 'Central do Brasil';

-- 11)  Inclua no banco 3 filmes que nunca foram nem nomeados ao Oscar, mas que merecem ser. 
INSERT INTO indicados_ao_oscar (ano_filmagem, ano_cerimonia, cerimonia, categoria, nome_do_indicado, nome_do_filme, vencedor)
VALUES
(2023, 2024, 1,  'ART DIRECTION', 'Cailee Spaeny', 'Priscilla', 0),
(2023, 2024, 1,  'ACTRESS', 'Barry Keoghan', 'Saltburn', 0),
(2023, 2024, 1,  'ACTOR', 'Michael Fassbender', 'The Killer', 1);

-- 14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
SELECT categoria, nome_do_filme
FROM indicados_ao_oscar
WHERE ano_cerimonia = 2002
  AND (categoria = 'BEST PICTURE' OR categoria = 'ACTOR' OR categoria = 'DIRECTING');
