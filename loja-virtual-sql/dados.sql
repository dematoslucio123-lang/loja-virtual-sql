-- Inserindo clientes
INSERT INTO clientes (nome, email, cidade) VALUES
('Ana Lima',      'ana@email.com',     'São Paulo'),
('Carlos Souza',  'carlos@email.com',  'Rio de Janeiro'),
('Mariana Costa', 'mari@email.com',    'Belo Horizonte'),
('Pedro Alves',   'pedro@email.com',   'São Paulo'),
('Julia Ferreira','julia@email.com',   'Curitiba');

-- Inserindo produtos
INSERT INTO produtos (nome, categoria, preco) VALUES
('Teclado Mecânico',   'Informática',  350.00),
('Mouse Gamer',        'Informática',  150.00),
('Monitor 24"',        'Informática',  900.00),
('Cadeira Ergonômica', 'Móveis',      1200.00),
('Headset USB',        'Informática',  250.00);

-- Inserindo pedidos
INSERT INTO pedidos (cliente_id, produto_id, quantidade, status) VALUES
(1, 1, 1, 'entregue'),
(1, 2, 2, 'entregue'),
(2, 3, 1, 'enviado'),
(3, 4, 1, 'pendente'),
(4, 1, 1, 'entregue'),
(4, 5, 1, 'entregue'),
(5, 2, 1, 'cancelado'),
(2, 5, 2, 'entregue'),
(3, 1, 1, 'enviado'),
(1, 4, 1, 'pendente');
