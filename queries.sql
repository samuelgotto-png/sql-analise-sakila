-- Projeto: Análise de Dados com SQL 
-- Base: Sakile
-- Autor: Samuel Otto

-- 1 listagem de atores
USE sakila;

SELECT * 
FROM actor;

-- 2 atores com maior número de filmes 
SELECT 
	a.first_name,
    a.last_name,
    COUNT(fa.film_id) 
		AS total_film
FROM actor a 
JOIN film_actor fa 
	ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY total_film DESC;

-- 3 Quantidade de filmes por categoria

SELECT
  c.name AS categoria,
  COUNT(f.film_id) AS total_filmes
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
GROUP BY c.name
ORDER BY total_filmes DESC;
