-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sapataria_db_giovanna
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sapataria_db_giovanna
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sapataria_db_giovanna` DEFAULT CHARACTER SET utf8 ;
USE `sapataria_db_giovanna` ;

-- -----------------------------------------------------
-- Table `sapataria_db_giovanna`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sapataria_db_giovanna`.`clientes` (
  `idclientes` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NOT NULL,
  `endereco` VARCHAR(80) NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idclientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sapataria_db_giovanna`.`categorias_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sapataria_db_giovanna`.`categorias_produtos` (
  `idcategoria` INT NOT NULL AUTO_INCREMENT,
  `nome_categoria` VARCHAR(150) NOT NULL,
  `descricao` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`idcategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sapataria_db_giovanna`.`fornecedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sapataria_db_giovanna`.`fornecedores` (
  `idfornecedor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NOT NULL,
  `endereco` VARCHAR(80) NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idfornecedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sapataria_db_giovanna`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sapataria_db_giovanna`.`produtos` (
  `idprodutos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NOT NULL,
  `descricao` VARCHAR(250) NOT NULL,
  `preco` DECIMAL(10,0) NOT NULL,
  `tamanho` VARCHAR(100) NOT NULL,
  `cor` VARCHAR(45) NOT NULL,
  `estoque` VARCHAR(45) NOT NULL,
  `idcategoria` INT NOT NULL,
  `idfornecedor` INT NOT NULL,
  PRIMARY KEY (`idprodutos`),
  INDEX `fk_produtos_categorias_produtos1_idx` (`idcategoria` ASC) VISIBLE,
  INDEX `fk_produtos_fornecedores1_idx` (`idfornecedor` ASC) VISIBLE,
  CONSTRAINT `fk_produtos_categorias_produtos1`
    FOREIGN KEY (`idcategoria`)
    REFERENCES `sapataria_db_giovanna`.`categorias_produtos` (`idcategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_fornecedores1`
    FOREIGN KEY (`idfornecedor`)
    REFERENCES `sapataria_db_giovanna`.`fornecedores` (`idfornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sapataria_db_giovanna`.`funcionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sapataria_db_giovanna`.`funcionarios` (
  `idfuncionarios` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NOT NULL,
  `cargo` VARCHAR(100) NOT NULL,
  `data_de_contratacao` DATE NOT NULL,
  `salario` DECIMAL(10,0) NOT NULL,
  PRIMARY KEY (`idfuncionarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sapataria_db_giovanna`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sapataria_db_giovanna`.`pedidos` (
  `idpedidos` INT NOT NULL AUTO_INCREMENT,
  `data_do_pedido` DATE NOT NULL,
  `idclientes` INT NOT NULL,
  `idfuncionarios` INT NOT NULL,
  `status_do_pedido` VARCHAR(45) NOT NULL,
  `total_do_pedido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpedidos`),
  INDEX `fk_pedidos_clientes_idx` (`idclientes` ASC) VISIBLE,
  INDEX `fk_pedidos_funcionarios1_idx` (`idfuncionarios` ASC) VISIBLE,
  CONSTRAINT `fk_pedidos_clientes`
    FOREIGN KEY (`idclientes`)
    REFERENCES `sapataria_db_giovanna`.`clientes` (`idclientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedidos_funcionarios1`
    FOREIGN KEY (`idfuncionarios`)
    REFERENCES `sapataria_db_giovanna`.`funcionarios` (`idfuncionarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sapataria_db_giovanna`.`itens_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sapataria_db_giovanna`.`itens_pedido` (
  `iditens_pedido` INT NOT NULL AUTO_INCREMENT,
  `idpedidos` INT NOT NULL,
  `idprodutos` INT NOT NULL,
  `quantidade` VARCHAR(50) NOT NULL,
  `preco_unitario` DECIMAL(10,0) NOT NULL,
  PRIMARY KEY (`iditens_pedido`),
  INDEX `fk_intens_pedido_pedidos1_idx` (`idpedidos` ASC) VISIBLE,
  INDEX `fk_itens_pedido_produtos1_idx` (`idprodutos` ASC) VISIBLE,
  CONSTRAINT `fk_intens_pedido_pedidos1`
    FOREIGN KEY (`idpedidos`)
    REFERENCES `sapataria_db_giovanna`.`pedidos` (`idpedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_itens_pedido_produtos1`
    FOREIGN KEY (`idprodutos`)
    REFERENCES `sapataria_db_giovanna`.`produtos` (`idprodutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sapataria_db_giovanna`.`pagamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sapataria_db_giovanna`.`pagamentos` (
  `idpagamento` INT NOT NULL AUTO_INCREMENT,
  `idpedidos` INT NOT NULL,
  `metodo_pagamento` VARCHAR(100) NOT NULL,
  `valor` DECIMAL(10,0) NOT NULL,
  `data` DATE NOT NULL,
  PRIMARY KEY (`idpagamento`),
  INDEX `fk_pagamentos_pedidos1_idx` (`idpedidos` ASC) VISIBLE,
  CONSTRAINT `fk_pagamentos_pedidos1`
    FOREIGN KEY (`idpedidos`)
    REFERENCES `sapataria_db_giovanna`.`pedidos` (`idpedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
