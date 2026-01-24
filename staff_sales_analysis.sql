USE sakila;

SELECT
    s.staff_id AS funcionario_id,
    CONCAT(MIN(s.first_name), ' ', MIN(s.last_name)) AS nome_funcionario,
    MAX(p.amount) AS maior_venda,
    MIN(p.amount) AS menor_venda,
    AVG(p.amount) AS media_valor,
    SUM(p.amount) AS total_vendas,
    COUNT(*) AS numero_vendas
FROM payment p
JOIN staff s
    ON p.staff_id = s.staff_id
GROUP BY s.staff_id
ORDER BY total_vendas DESC;
