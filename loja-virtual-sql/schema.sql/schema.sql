CREATE TABLE clientes (
    id          SERIAL PRIMARY KEY,
    nome        VARCHAR(100) NOT NULL,
    email       VARCHAR(100) UNIQUE NOT NULL,
    cidade      VARCHAR(100),
    criado_em   DATE DEFAULT CURRENT_DATE
);

CREATE TABLE produtos (
    id          SERIAL PRIMARY KEY,
    nome        VARCHAR(100) NOT NULL,
    categoria   VARCHAR(50),
    preco       NUMERIC(10, 2) NOT NULL
);

CREATE TABLE pedidos (
    id            SERIAL PRIMARY KEY,
    cliente_id    INT REFERENCES clientes(id),
    produto_id    INT REFERENCES produtos(id),
    quantidade    INT NOT NULL,
    data_pedido   DATE DEFAULT CURRENT_DATE,
    status        VARCHAR(20) DEFAULT 'pendente'
);