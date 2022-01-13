-- Utilizamos o comando SELECT para realizar uma consulta no banco de dados:
SELECT `nome` FROM `ARTISTAS`;
SELECT `id`,`nome` FROM `ARTISTAS`;
SELECT * FROM `cancoes`;

-- Para inserir dados em uma tabela, utilizamos o comando INSERT:
INSERT INTO `musimundos`.`artistas`(`id`,`nome`)
VALUES ("276","Zé Vaqueiro");

-- Para atualizarmos algum campo de uma tabela, utilizamos o comando UPDATE:
SET SQL_SAFE_UPDATES = 0;
UPDATE `musimundos`.`artistas` SET `nome` = 'Unha Pintada'
WHERE `nome` = 'Zé Vaqueiro';

-- Finalmente, para excluirmos um dado ou registro de uma tabela, utilizamos o comando DELETE:
DELETE FROM `artistas` 
WHERE `nome` = 'Unha Pintada';

-- WHERE COMPARAÇÃO;
-- DURAÇÃO IGUAL A 385880
SELECT `nome`, `duracao_milisegundos` FROM `cancoes`
WHERE `duracao_milisegundos` = 385880;
-- MENOR QUE 25000 MILISEGUNDOS
SELECT `nome`, `duracao_milisegundos` FROM `cancoes`
WHERE `duracao_milisegundos` < 25000;
-- MENOR OU IGUAL A 25000 MILISEGUNDOS
SELECT `nome`, `duracao_milisegundos` FROM `cancoes`
WHERE `duracao_milisegundos` <= 25000;
-- MAIOR QUE 300000 MILISEGUNDOS
SELECT `nome`, `duracao_milisegundos` FROM `cancoes`
WHERE `duracao_milisegundos` > 300000;
-- MAIOR IGUAL A 300000 MILISEGUNDOS
SELECT `nome`, `duracao_milisegundos` FROM `cancoes`
WHERE `duracao_milisegundos` >= 300000;
-- DIFERENTE DE 385880 com sinal de diferente !
SELECT `nome`, `duracao_milisegundos` FROM `cancoes`
WHERE `duracao_milisegundos` != 385880;
--  DIFERENTE DE 385880 com sinal de menor maior <>
SELECT `nome`, `duracao_milisegundos` FROM `cancoes`
WHERE `duracao_milisegundos` <> 385880;

-- SELECT COM DOIS PARAMETROS com AND, trás os dois sendo verdadeiros
SELECT `nome`, `duracao_milisegundos`,`preco_unitario` FROM `cancoes`
WHERE `duracao_milisegundos` > 420000 AND `preco_unitario` < 1.00;

-- SELECT COM DOIS PARAMETROS trás qualquer um que tenha pelo menos um valor verdadeiro
SELECT `nome`, `duracao_milisegundos`,`preco_unitario` FROM `cancoes`
WHERE `duracao_milisegundos` > 420000 OR `preco_unitario` > 1.00;

-- ORDER BY ascendente A-Z
SELECT `nome`, `duracao_milisegundos`,`preco_unitario` FROM `cancoes`
WHERE `duracao_milisegundos` > 420000 OR `preco_unitario` > 1.00
ORDER BY `nome` ASC;
-- ORDER BY descendente Z-A 
SELECT `nome`, `duracao_milisegundos`,`preco_unitario` FROM `cancoes`
WHERE `duracao_milisegundos` > 420000 OR `preco_unitario` > 1.00
ORDER BY `nome` DESC;

-- LIMITANDO BUSCA AOS 10 PRIMEIROS QUE CORRESPONDE AOS RESULTADOS DE WHERE
SELECT `nome`, `duracao_milisegundos`,`preco_unitario` FROM `cancoes`
WHERE `duracao_milisegundos` > 420000 OR `preco_unitario` > 1.00
ORDER BY `nome` ASC
LIMIT 10;
-- LIMITANDO BUSCA A PARTIR DO trigésimo resultado sem filtro
SELECT `id`,`nome`, `duracao_milisegundos`,`preco_unitario` FROM `cancoes`
LIMIT 10 OFFSET 30;

-- ALIAS, apelidando tabelas para busca - caso de atualização de preço
SELECT `id`,`nome`, `duracao_milisegundos`,`preco_unitario`*5 AS `NovoPreco`
FROM `cancoes`
LIMIT 10;

-- FUNÇÃO COUNT
SELECT COUNT(`id`) FROM `cancoes`;
-- FUNÇÃO COUNT COM PARAMETRO EM WHERE
SELECT COUNT(`nome`) FROM `cancoes`
WHERE `nome` = 'time';

-- FUNÇÃO MAX retorna o preço mais cara de um determinado item
SELECT MAX(`valor_total`) FROM `faturas`;

-- FUNÇÃO MIN retorna o menor valor de um item
SELECT MIN(`valor_total`) FROM `faturas`;

-- FUNÇÃO AVG retorna a média de um conjunto de valores
SELECT AVG(`valor_total`) FROM `faturas`;

-- FUNÇÃO SUM soma um conjunto de valores
SELECT SUM(`valor_total`) FROM `faturas`;

-- FUNÇÃO DATE_FORMAT altera o formato da data
SELECT DATE_FORMAT(`data_contratacao`, "%d %M %Y")
FROM `empregados`;

-- SUBQUERIES
SELECT `id`, `nome`
FROM `cancoes`
WHERE `preco_unitario` > (SELECT AVG(`preco_unitario`) FROM `cancoes`);


 SELECT `data_nascimento` FROM `empregados`;


 
SELECT `cancoes`.`nome` as `NomeCancao`, `tipos_de_arquivo`.`nome` as `TipoArquivo` 
FROM `cancoes` 
LEFT JOIN `tipos_de_arquivo` ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;

SELECT `titulo`, `nome`, `compositor` 
FROM `albuns` AS `a` 
INNER JOIN `cancoes` AS `c` ON `a`.`id` = `c`.`id_album`;

SELECT `titulo`, `nome`, `compositor` 
FROM `albuns` AS `a` 
RIGHT JOIN `cancoes` AS `c` ON `a`.`id` = `c`.`id_album`;




SELECT `nome`, `titulo` 
FROM `artistas` 
LEFT JOIN `albuns` on `artistas`.`id` = `albuns`.`id_artista`;


SELECT `nome`, `titulo` 
FROM `artistas` 
RIGHT JOIN `albuns` on `artistas`.`id` = `albuns`.`id_artista`;

SELECT `nome`, `titulo` 
FROM `artistas` 
LEFT JOIN `albuns` on `artistas`.`id` = `albuns`.`id_artista`;
