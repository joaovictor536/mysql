CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    NomeProduto VARCHAR(100) NOT NULL,
    Quantidade INT NOT NULL,
    Preco DECIMAL(10,2) NOT NULL
);

INSERT INTO Produtos (NomeProduto, Quantidade, Preco) VALUES
('Notebook', 15, 4299.90),
('Mouse', 50, 149.00),
('Teclado', 28, 599.99);