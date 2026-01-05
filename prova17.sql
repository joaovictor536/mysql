
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


CREATE TABLE Fornecedores (
    FornecedorID INT PRIMARY KEY AUTO_INCREMENT,
    NomeFornecedor VARCHAR(100) NOT NULL,
    Contato VARCHAR(100)
);


INSERT INTO Fornecedores (NomeFornecedor, Contato) VALUES
('Tech Distribuidora', 'contato@techdist.com'),
('Eletrônicos BR', 'vendas@eletronicosbr.com'),
('Global Parts', 'info@globalparts.com');


CREATE TABLE Estoque (
    EstoqueID INT PRIMARY KEY AUTO_INCREMENT,
    ProdutoID INT NOT NULL,
    FornecedorID INT NOT NULL,
    Quantidade INT NOT NULL,
    DataEntrada DATE NOT NULL,
    

    CONSTRAINT fk_estoque_produto 
        FOREIGN KEY (ProdutoID) 
        REFERENCES Produtos(ProdutoID)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE,
    
    
    CONSTRAINT fk_estoque_fornecedor 
        FOREIGN KEY (FornecedorID) 
        REFERENCES Fornecedores(FornecedorID)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);


INSERT INTO Estoque (ProdutoID, FornecedorID, Quantidade, DataEntrada) VALUES
(1, 1, 30, '2026-01-02'),
(2, 2, 100, '2026-01-03'),
(3, 1, 50, '2026-01-04'),
(1, 3, 20, '2026-01-05');