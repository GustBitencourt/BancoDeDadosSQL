-- CRAIANDO TABELA;
CREATE SCHEMA `checkpoint`;

-- CRIANDO TABELA COM SUAS PK'S;
CREATE TABLE `checkpoint`.`passageiros` (
	`passageiro_id` INT NOT NULL AUTO_INCREMENT,
	`passageiro_nome` VARCHAR(150) NOT NULL,
	`passageiro_endereco` VARCHAR(150),
	`passageiro_contato` CHAR(11) NOT NULL,
    `passageiro_cpf` CHAR(11) NOT NULL,
	PRIMARY KEY(`passageiro_id`)
);

CREATE TABLE `checkpoint`.`onibus` (
	`onibus_id` INT NOT NULL AUTO_INCREMENT,
	`onibus_destino` VARCHAR(150),
	`onibus_paradas` VARCHAR(150),
	`onibus_motorista` CHAR(11),
	`onibus_previsao_chegada` DATETIME,
	`onibus_assento` CHAR(3),
	PRIMARY KEY(`onibus_id`)
);

-- CRIANDO TABELA COM AS FK'S REFERENTES AS TABELAS ACIMA;
CREATE TABLE `checkpoint`.`passagens` (
	`passagem_id` INT NOT NULL AUTO_INCREMENT,
	`passagem_destino` VARCHAR(150),
	`passagem_preco` DECIMAL(7,2),
	`passagem_data` DATE,
	`passagem_horario` TIME,
	`passageiro_id` INT NOT NULL,
	`passageeiro_assento` CHAR(3),
	`onibus_id` INT NOT NULL,
	PRIMARY KEY(`passagem_id`),    
	CONSTRAINT `FKpassageiroid`
		FOREIGN KEY (`passageiro_id`)
        REFERENCES`checkpoint`.`passageiros`(`passageiro_id`),
	CONSTRAINT `FKonibusid`
		FOREIGN KEY (`onibus_id`)
        REFERENCES `checkpoint`.`onibus`(`onibus_id`)
);


-- Inserindo Dados na tabela de passageiros;
INSERT INTO `checkpoint`.`passageiros`(`passageiro_nome`,`passageiro_endereco`,`passageiro_contato`, `passageiro_cpf`)
VALUES ('Gustavo Bitencourt','Avenida Paulista','11970707070', '12345678901');

INSERT INTO `checkpoint`.`passageiros`(`passageiro_nome`,`passageiro_endereco`,`passageiro_contato`, `passageiro_cpf`)
VALUES ('Lionel Messi','Avenida Brasil','11980808080', '12345678901');

INSERT INTO `checkpoint`.`passageiros`(`passageiro_nome`,`passageiro_endereco`,`passageiro_contato`, `passageiro_cpf`)
VALUES ('Anitta','Quinta Avenida','21990909090', '12345678901');

-- SELECIONANDO PASSAGEIROS;
SELECT * FROM `checkpoint`.`passageiros`;

-- ALTERANDO DADO;
SET SQL_SAFE_UPDATES = 0;
UPDATE `checkpoint`.`passageiros` SET `passageiro_nome` = 'Beyonce'
WHERE `passageiro_nome` = 'Anitta';

-- CONFERINDO mudança de 'Anitta' para 'Beyonce';
SELECT `passageiro_nome` 
FROM `checkpoint`.`passageiros`;

-- DELETANDO DADO
DELETE FROM `checkpoint`.`passageiros`  
WHERE `passageiro_nome` = 'Gustavo Bitencourt';

-- Conferindo DELETE;
SELECT `passageiro_nome` 
FROM `checkpoint`.`passageiros`;




