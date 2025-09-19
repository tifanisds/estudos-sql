CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(150),
    cidade VARCHAR(100),
    idade INT
);

INSERT INTO clientes (id, nome, email, cidade, idade) VALUES
(1, 'Tífani Sá', 'tifani@email.com', 'Salvador', 25),
(2, 'Maria Silva', 'maria@email.com', 'Feira de Santana', 30),
(3, 'João Souza', 'joao@email.com', 'Salvador', 22),
(4, 'Ana Oliveira', 'ana@email.com', 'Camaçari', 35),
(5, 'Pedro Santos', 'pedro@email.com', 'Salvador', 28);

-----------------------------------------------------------------------

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    valor_total DECIMAL(10,2),
    status VARCHAR(20),
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO pedidos (id, cliente_id, valor_total, status, data_pedido) VALUES
(1, 1, 250.00, 'Pago', '2025-09-01'),
(2, 2, 120.00, 'Pendente', '2025-09-02'),
(3, 1, 300.00, 'Pago', '2025-09-05'),
(4, 3, 450.00, 'Cancelado', '2025-09-07'),
(5, 2, 200.00, 'Pago', '2025-09-10'),
(6, 4, 500.00, 'Pago', '2025-09-12'),
(7, 5, 180.00, 'Pago', '2025-09-15');
