CREATE SCHEMA `loja`;

CREATE TABLE `loja`.`clientes`(
	`cliente_id` INT NOT NULL AUTO_INCREMENT,
    `cliente_nome` VARCHAR(100),
    PRIMARY KEY(`cliente_id`)
);

CREATE TABLE `loja`.`cartao`(
	`cartao_id` INT NOT NULL AUTO_INCREMENT,
	`cartao_numero` CHAR(16) NULL,
    `cartao_vencimento` DATE NULL,
    `cartao_codigo` CHAR(3) NULL, 
    `cliente_id` INT NULL,
    PRIMARY KEY (`cartao_id`),
    CONSTRAINT `FKclienteid` 
		FOREIGN KEY (`cliente_id`) 
		REFERENCES `loja`.`clientes`(`cliente_id`)
);
