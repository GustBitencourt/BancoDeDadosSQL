/* Utilizando a base de dados musimundos_v2, na tabela faturas crie as procedures: */ 
 -- 1) Crie uma procedure que selecione o valor da fatura com o valor mais baixo. 
 DELIMITER %%
 CREATE PROCEDURE `MenorValor` ()
 BEGIN
 SELECT MIN(`valor_total`)
 FROM `faturas`;
 END %%
 DELIMITER ;
 
 CALL `MenorValor` ();
 
 
 -- 2) Crie uma procedure que retorna a quantidade de faturas que tem o país de cobrança como “Canada”.
DELIMITER $$
CREATE PROCEDURE `QtdFaturaCanada` ()
BEGIN
SELECT  COUNT(`valor_total`)
FROM `faturas` WHERE `pais_cobranca` = "Canada";
END $$
DELIMITER ;

CALL `QtdFaturaCanada` ();


-- 3) Uma procedure que retorna o valor somado de todas as faturas.
DELIMITER $$
CREATE PROCEDURE `SomaFaturasTotal` ()
BEGIN
SELECT  SUM(`valor_total`)
FROM `faturas`;
END $$
DELIMITER ;

CALL `SomaFaturasTotal` ();

-- 4)Uma procedure que retorna o valor médio de todas as faturas.
DELIMITER $$
CREATE PROCEDURE `MediaFaturas` ()
BEGIN
SELECT AVG(`valor_total`)
FROM `faturas`;
END $$
DELIMITER ;

CALL `MediaFaturas` ();


/* Utilizando a base de dados musimundos_v2, na tabela cancoes crie as procedures: */
-- 1) Crie uma procedure que retorna o tamanho em bytes e a duração de uma canção pelo seu id.
DELIMITER $$
CREATE PROCEDURE `TamanhoDuracao` (IN `id_cancao` INT)
BEGIN
SELECT `bytes`, `duracao_milisegundos`
FROM `cancoes`
WHERE `id` = `id_cancao`;
END $$
DELIMITER ;

CALL `TamanhoDuracao` (17);

-- 2)Crie uma procedure que retorna o preço unitário uma canção pelo seu id.
DELIMITER $$
CREATE PROCEDURE `Preco` (IN `id_cancao` INT)
BEGIN
SELECT `preco_unitario`
FROM `cancoes`
WHERE `id` = `id_cancao`;
END $$
DELIMITER ;

-- 3)Crie uma procedure que retorna o id da canção, 
-- o nome da canção e o tipo de arquivo(table tipos_de_arquivo) desta canção á partir de um id da canção informado. 
DELIMITER $$
CREATE PROCEDURE `Preco` (IN `id_cancao` INT)
BEGIN
SELECT `nome`.`cancoes`, `nome`.`tipos_de_arquivo`
FROM `cancoes`
INNER JOIN `tipos_de_arquivo`
WHERE `id` = `id_cancao`;
END $$
DELIMITER ;








 
 
