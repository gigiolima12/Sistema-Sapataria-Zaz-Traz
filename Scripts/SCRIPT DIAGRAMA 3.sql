/*/
Atividade 3
Projeto Integrador
# Ajuste questões de segurança, incluindo usuários, papéis e permissões.
/*/

DROP USER IF EXISTS 'gerente'@'localhost';
CREATE USER 'gerente'@'localhost' IDENTIFIED BY 'gerentepass';
GRANT ALL PRIVILEGES ON sapataria_db_giovanna.* TO 'gerente'@'localhost';

DROP USER IF EXISTS 'vendedor'@'localhost';
CREATE USER 'vendedor'@'localhost' IDENTIFIED BY 'vendedorpass';
GRANT SELECT ON sapataria_db_giovanna.* TO 'vendedor'@'localhost';
FLUSH PRIVILEGES;

/*/
Crie visões no banco de dados para consultas mais frequentes.
/*/
 
# Visão de Funcionários:
DROP VIEW IF EXISTS funcionarios_vw;
CREATE VIEW funcionarios_vw AS
SELECT f.idfuncionarios, f.nome
FROM funcionarios f;

# Visão de Pedidos:
DROP VIEW IF EXISTS pedidos_vw;
CREATE VIEW pedidos_vw AS
SELECT p.idpedidos, p.status_do_pedido
FROM pedidos p;

# Visão de Clientes:
DROP VIEW IF EXISTS clientes_vw;
CREATE VIEW clientes_vw AS
SELECT c.idclientes, c.nome
FROM clientes c;

# Visão de Produtos:
DROP VIEW IF EXISTS produtos_vw;
CREATE VIEW produtos_vw AS
SELECT p.idprodutos, p.nome
FROM produtos p;

/*/
 Crie ao menos uma stored function, um stored procedure ou um trigger para o banco de dados, 
 selecionando uma funcionalidade que seja adequada para tanto.
 /*/

DELIMITER //
CREATE FUNCTION TotalEmEstoque(p_idproduto INT) RETURNS INT
BEGIN
    DECLARE total INT;
    SELECT quantidade INTO total FROM produtos WHERE id = p_idproduto;
    RETURN total;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE AdicionarProduto(IN p_nome VARCHAR(255), IN p_preco DECIMAL(10,2), IN p_quantidade INT)
BEGIN
    INSERT INTO produtos(nome, preco, quantidade) VALUES(p_nome, p_preco, p_quantidade);
END //
DELIMITER ;

/*/
Crie ao menos um índice composto para uma das tabelas.
/*/

CREATE INDEX idx_pedidos_cliente_data ON pedidos (idclientes, data_do_pedido);



