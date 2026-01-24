-- =====================================================
-- PROJETO: Análise de Vendas por Funcionário
-- BASE: Sakila (MySQL)
-- OBJETIVO: Avaliar desempenho de vendas por funcionário
-- =====================================================

USE sakila;

-- =====================================================
-- 1. MÉTRICAS GERAIS DE VENDAS POR FUNCIONÁRIO
-- =====================================================
-- Esta consulta retorna:
-- - Maior valor de venda
-- - Menor valor de venda
-- - Média dos valores
-- - Total vendido
-- - Quantidade de vendas
-- Agrupado por funcionário

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

-- =====================================================
-- 2. TOTAL DE VENDAS POR FUNCIONÁRIO (RANKING)
-- =====================================================
-- Objetivo:
-- Identificar quais funcionários venderam mais em valor total

SELECT
    s.staff_id,
    CONCAT(s.first_name, ' ', s.last_name) AS funcionario,
    SUM(p.amount) AS total_vendas
FROM payment p
JOIN staff s
    ON p.staff_id = s.staff_id
GROUP BY s.staff_id, funcionario
ORDER BY total_vendas DESC;

-- =====================================================
-- 3. QUANTIDADE DE VENDAS POR FUNCIONÁRIO
-- =====================================================
-- Objetivo:
-- Analisar o volume de vendas realizadas por cada funcionário

SELECT
    s.staff_id,
    CONCAT(s.first_name, ' ', s.last_name) AS funcionario,
    COUNT(p.payment_id) AS numero_vendas
FROM payment p
JOIN staff s
    ON p.staff_id = s.staff_id
GROUP BY s.staff_id, funcionario
ORDER BY numero_vendas DESC;

-- =====================================================
-- 4. MÉDIA DE VALOR POR VENDA (TICKET MÉDIO)
-- =====================================================
-- Objetivo:
-- Identificar funcionários com maior ticket médio por venda

SELECT
    s.staff_id,
    CONCAT(s.first_name, ' ', s.last_name) AS funcionario,
    ROUND(AVG(p.amount), 2) AS media_por_venda
FROM payment p
JOIN staff s
    ON p.staff_id = s.staff_id
GROUP BY s.staff_id, funcionario
ORDER BY media_por_venda DESC;
