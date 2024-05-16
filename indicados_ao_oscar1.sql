-- 1) Quantas vezes Natalie Portman foi indicada ao Oscar?
-- SELECT COUNT(*) 
-- FROM indicados_ao_oscar 
-- WHERE nome_do_indicado = 'Natalie Portman';

-- 2) Quantos Oscars Natalie Portman ganhou?
-- SELECT COUNT(*) 
-- FROM indicados_ao_oscar 
-- WHERE nome_do_indicado = 'Natalie Portman' AND vencedor = 'sim';

-- 3) Amy Adams já ganhou algum Oscar?
-- SELECT COUNT(*)
-- FROM indicados_ao_oscar
-- WHERE nome_do_indicado = 'Amy Adams' AND vencedor = 'sim';

-- 4) A série de filmes Toy Story ganhou um Oscar em quais anos?
-- SELECT ano_cerimonia, nome_do_filme
-- FROM indicados_ao_oscar
-- WHERE nome_do_filme LIKE '%Toy Story%' AND vencedor = 'sim';

-- 5) A partir de que ano que a categoria "Actress" deixa de existir?
-- SELECT MAX(ano_cerimonia)
-- FROM indicados_ao_oscar
-- WHERE categoria = 'Actress';
 
-- 6) O primeiro Oscar para melhor Atriz foi para quem? Em que ano?

-- SELECT nome_do_indicado, ano_cerimonia
-- FROM indicados_ao_oscar
-- WHERE categoria = 'Best Actress' AND vencedor = 'sim'
-- ORDER BY ano_cerimonia ASC
-- LIMIT 1;



