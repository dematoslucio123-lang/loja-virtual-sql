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








