CREATE SCHEMA `secretariaedu`;

CREATE TABLE `secretariaedu`.`escolas`(
	`escolas_id` INT NOT NULL AUTO_INCREMENT,
    `escolas_nome` VARCHAR(150),
    PRIMARY KEY (`escolas_id`)
);

CREATE TABLE `secretariaedu`.`alunos`(
	`aluno_id` INT NOT NULL AUTO_INCREMENT,
    `aluno_nome` VARCHAR(150) NULL,
    `escola_id` INT NULL,
    PRIMARY KEY (`aluno_id`),
    CONSTRAINT `FKescolaid`
		FOREIGN KEY(`escola_id`)
        REFERENCES `secretariaedu`.`escolas`(`escolas_id`)
);
    
