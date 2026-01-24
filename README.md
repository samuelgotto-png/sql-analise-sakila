# Projeto SQL – Análise de Dados (Base Sakila)

## 📌 Contexto
Este projeto utiliza o banco de dados **Sakila**, uma base de dados de exemplo amplamente utilizada para estudos e práticas em SQL.  
O objetivo é demonstrar habilidades em **consulta, análise e agregação de dados**, utilizando boas práticas de SQL.

---

## 🎯 Objetivo
Praticar análise de dados utilizando SQL, explorando:
- Relacionamentos entre tabelas
- Funções de agregação
- Filtros
- Agrupamentos
- Organização de consultas para análise de negócio

---

## 🗂 Estrutura do Projeto

- **queries.sql**  
  Consultas focadas em:
  - Relação entre atores, filmes e categorias  
  - Uso de `JOIN` entre múltiplas tabelas  
  - Exploração da base para análise relacional  

- **staff_sales_analysis.sql**  
  Consultas voltadas para análise de vendas por funcionário:
  - Total de vendas
  - Média de valores
  - Maior e menor valor vendido
  - Quantidade de vendas por funcionário

---

## 🧠 Consultas Desenvolvidas

### 1️⃣ Análise de Vendas por Funcionário
Utilização de **funções de agregação** para entender o desempenho de cada funcionário:

- `MAX()` – maior valor de venda  
- `MIN()` – menor valor de venda  
- `AVG()` – média de valores  
- `SUM()` – total vendido  
- `COUNT()` – número de vendas  

Com aplicação de:
- `WHERE` para filtros
- `GROUP BY` para agrupamento por funcionário
- `ORDER BY` para ordenação dos resultados

---

### 2️⃣ Análise Relacional (Atores, Filmes e Categorias)
Consultas utilizando:
- `INNER JOIN`
- Relacionamento entre tabelas de atores, filmes e categorias
- Organização de dados para análise estrutural da base

---

## 🛠 Tecnologias Utilizadas
- SQL
- MySQL
- MySQL Workbench
- Banco de Dados Sakila
- GitHub

---

## 📈 Próximos Passos
- Expandir análises utilizando `FUNCTIONS`
- Criar novas consultas com foco em negócio
- Evoluir para análises em Excel e Power BI

---

## 👤 Autor
**Samuel Otto**  
Analista de Dados Júnior (em formação)
