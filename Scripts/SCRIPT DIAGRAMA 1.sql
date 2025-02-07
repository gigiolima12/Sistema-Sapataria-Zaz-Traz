CREATE DATABASE sapataria_db_giovanna;
USE sapataria_db_giovanna;

# Tabela de Clientes
CREATE TABLE clientes (
    idclientes INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(255)
);

# Tabela de Produtos
CREATE TABLE produtos (
    idprodutos INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao TEXT,
    preco DECIMAL(10, 2),
    tamanho VARCHAR(20),
    cor VARCHAR(20),
    estoque INT
);

# Tabela de Pedidos
CREATE TABLE pedidos (
    idpedidos INT PRIMARY KEY AUTO_INCREMENT,
    data_do_pedido DATE,
    idclientes INT,
    idfuncionarios INT,
    status_do_pedido VARCHAR(50),
    total_do_pedido DECIMAL(10, 2),
    FOREIGN KEY (idclientes) REFERENCES clientes(idclientes),
    FOREIGN KEY (idfuncionarios) REFERENCES funcionarios(idfuncionarios)
);

# Tabela de Itens do Pedido
CREATE TABLE itens_pedido (
    iditens_pedido INT PRIMARY KEY AUTO_INCREMENT,
    idpedidos INT,
    idprodutos INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (idpedidos) REFERENCES pedidos(idpedidos),
    FOREIGN KEY (idprodutos) REFERENCES produtos(idprodutos)
);

# Tabela de Funcionários
CREATE TABLE funcionarios (
    idfuncionarios INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    data_de_contratacao DATE,
    salario DECIMAL(10, 2)
);

# Tabela de Fornecedores
CREATE TABLE fornecedores (
    idfornecedores INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(255)
);

# Tabela de Categorias de Produtos
CREATE TABLE categorias_de_produtos (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(255),
    descricao TEXT
);

# Tabela de Pagamentos
CREATE TABLE pagamentos (
    idpagamentos INT PRIMARY KEY AUTO_INCREMENT,
    metodo_pagamento VARCHAR(50),
    valor DECIMAL(10, 2),
    data DATE,
    idpedidos INT,
    FOREIGN KEY (idpedidos) REFERENCES pedidos(idpedidos)
);