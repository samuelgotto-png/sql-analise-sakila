-- Projeto SQL - Análise de Atores por Categoria de Filme
-- Base de dados: Sakila (MySQL)

-- Objetivo:
-- Relacionar atores, filmes e categorias 
-- para entender em quais tipos de filmes cada ator atua

SELECT
    act.actor_id,
    act.first_name,
    act.last_name,
    cat.category_id,
    cat.name AS category_name,
    fa.film_id
FROM actor act
JOIN film_actor fa
  ON act.actor_id = fa.actor_id
JOIN film f 
  ON fa.film_id = fa.actor_id
JOIN film_category fc
  ON f.fil_id = fc.film_id
JOIN category cat
  ON fc.category_id = cat.category_id
ORDER BY act.first_name, cat.name;
