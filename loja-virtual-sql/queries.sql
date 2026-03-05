-- Ver todos os clientes

 SELECT * 
 FROM clientes;

 -- Quais produtos custam mais de R$ 200?

SELECT * 
FROM produtos
WHERE preco > 200
ORDER BY preco DESC;


 -- Quais pedidos foram entregues?

 SELECT * 
 FROM pedidos
 WHERE status = 'entregue';

-- Quantos pedidos cada cliente fez?

SELECT cliente_id, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY cliente_id
ORDER BY total_pedidos DESC;



-- 5. Valor total por pedido (com JOIN)
SELECT
    p.id AS pedido_id,
    c.nome AS cliente,
    pr.nome AS produto,
    p.quantidade,
    (pr.preco * p.quantidade) AS valor_total
FROM pedidos p
JOIN clientes c  ON c.id = p.cliente_id
JOIN produtos pr ON pr.id = p.produto_id;








