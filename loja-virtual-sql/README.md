# 🛒 Loja Virtual — Análise de Dados com SQL

Projeto de banco de dados relacional simulando uma loja virtual, desenvolvido para praticar SQL com PostgreSQL.

---

## 📌 Sobre o projeto

Este projeto cria e consulta um banco de dados de uma loja online fictícia com clientes, produtos e pedidos.  
O objetivo é responder **perguntas reais de negócio** usando SQL puro — do zero ao JOIN.

---

## 🗄️ Estrutura do banco de dados

O banco é composto por **3 tabelas relacionadas:**

```
clientes      → cadastro de clientes da loja
produtos      → catálogo de produtos disponíveis
pedidos       → registro de compras (liga clientes aos produtos)
```

### Relacionamento entre as tabelas

```
clientes (id) ←── pedidos (cliente_id)
produtos (id) ←── pedidos (produto_id)
```

---

## 📁 Arquivos do projeto

| Arquivo | O que faz |
|---|---|
| `schema.sql` | Criação de todas as tabelas |
| `dados.sql` | Inserção dos dados de exemplo |
| `queries.sql` | Consultas SQL respondendo perguntas de negócio |

---

## 🚀 Como rodar localmente

### Pré-requisitos
- [PostgreSQL](https://www.postgresql.org/download/) instalado
- pgAdmin ou terminal psql

### Passo a passo

**1. Crie o banco de dados**
```sql
CREATE DATABASE loja_virtual;
```

**2. Conecte ao banco**
```sql
\c loja_virtual
```

**3. Rode os arquivos na ordem:**
```
schema.sql  →  dados.sql  →  queries.sql
```

No pgAdmin: abra cada arquivo, selecione tudo (`Ctrl+A`) e pressione **F5**.

---

## 🔍 Consultas realizadas

### 1. Listar todos os clientes
```sql
SELECT * FROM clientes;
```

### 2. Produtos com preço acima de R$200
```sql
SELECT nome, preco
FROM produtos
WHERE preco > 200
ORDER BY preco DESC;
```

### 3. Pedidos com status "entregue"
```sql
SELECT *
FROM pedidos
WHERE status = 'entregue';
```

### 4. Quantidade de pedidos por cliente
```sql
SELECT cliente_id, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY cliente_id
ORDER BY total_pedidos DESC;
```

### 5. Valor total por pedido (com JOIN)
```sql
SELECT
    p.id AS pedido_id,
    c.nome AS cliente,
    pr.nome AS produto,
    p.quantidade,
    (pr.preco * p.quantidade) AS valor_total
FROM pedidos p
JOIN clientes c  ON c.id = p.cliente_id
JOIN produtos pr ON pr.id = p.produto_id;
```

---

## 🧠 Conceitos praticados

- `CREATE TABLE` com tipos de dados e constraints
- `PRIMARY KEY` e `FOREIGN KEY` (relacionamentos)
- `INSERT INTO` para popular o banco
- `SELECT`, `WHERE`, `ORDER BY`
- `GROUP BY` com `COUNT()`
- `JOIN` para unir tabelas

---

## 👨‍💻 Autor

Feito por **[Seu Nome]** como parte da jornada de aprendizado em SQL e Análise de Dados.  
🔗 [LinkedIn](https://www.linkedin.com/in/luciodematos/) • [GitHub] (https://github.com/dematoslucio123)