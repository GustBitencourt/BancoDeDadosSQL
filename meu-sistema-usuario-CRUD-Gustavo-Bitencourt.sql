CREATE SCHEMA `meusistema`;

CREATE TABLE `meusistema`.`usuarios`(
	`usuario_id` INT NOT NULL AUTO_INCREMENT,
    `usuario_nome` VARCHAR(150),
    `usuario_login` VARCHAR(20),
    `usuario_senha` VARCHAR(100),
    PRIMARY KEY(`usuario_id`)
);

INSERT INTO `meusistema`.`usuarios`(`usuario_nome`,`usuario_login`,`usuario_senha`)
VALUES ('Gustavo Bitencourt', 'GustavoBitencourt', '70707070');

INSERT INTO `meusistema`.`usuarios`(`usuario_nome`,`usuario_login`,`usuario_senha`)
VALUES ('Felipe', 'Felipe123', '123123');

INSERT INTO `meusistema`.`usuarios`(`usuario_nome`,`usuario_login`,`usuario_senha`)
VALUES ('Tulio', 'Tulio123', '12341234');

INSERT INTO `meusistema`.`usuarios`(`usuario_nome`,`usuario_login`,`usuario_senha`)
VALUES ('Lucas', 'Lucas123', '1234512345');

INSERT INTO `meusistema`.`usuarios`(`usuario_nome`,`usuario_login`,`usuario_senha`)
VALUES ('Diego', 'Diego123', '0000000');

SELECT `usuario_nome`,`usuario_login`,`usuario_senha`
FROM `meusistema`.`usuarios`;

UPDATE `meusistema`.`usuarios` SET `usuario_nome` = 'Janete'
WHERE `usuario_nome` = 'Gustavo Bitencourt';
SET SQL_SAFE_UPDATES = 0;

DELETE FROM `meusistema`.`usuarios` WHERE `usuario_nome` = 'Diego';





