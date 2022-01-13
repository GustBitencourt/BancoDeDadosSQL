/* 1 - Quantos registros foram retornados em cada consulta?
A) Selecione os nomes dos artistas (tabela artistas) que tem albuns, e o nome de
seus albuns (tabelas albuns) ordenado por id do artista (Order by). [Inner] */
-- 347 retornos nesse comando
SELECT `A`.`nome`, `T`.`titulo`
FROM `artistas` AS `A`
INNER JOIN `albuns` AS `T`
ON `A`.`id` = `T`.`id_artista`
ORDER BY A.`id`;

/* B) Agora selecione os nomes dos artistas (tabela artistas) que tem, e que não
tem albuns, e o nome de seus albuns quando houver (tabelas albuns) ordenado por id
do artista (Order by). [left] */
-- 418 retornos nesse comando
SELECT `A`.`nome`, `T`.`titulo`
FROM `artistas` AS `A` LEFT JOIN `albuns` AS `T`
ON `A`.`id` = `T`.`id_artista`
ORDER BY A.`id`;

/* 2 - Quantos registros foram retornados em cada consulta?

A) Selecione o id e o nome dos cliente (clientes) e o valor suas faturas (faturas)
[inner]. */
-- Retorna 350
SELECT `c`.`id`, `c`.`nome`, `f`.`valor_total`
FROM `clientes` AS `c`
INNER JOIN `faturas` AS `f`
ON `c`.`id` = `f`.`id_cliente`;

/* B) Agora selecione o id e o nome dos cliente (clientes) e o valor suas faturas
(faturas). E selecione também as faturas que não tem clientes. [right]. */
-- Retorna 412
SELECT `c`.`id`, `c`.`nome`, `f`.`valor_total`
FROM `clientes` AS `c`
RIGHT JOIN `faturas` AS `f`
ON `c`.`id` = `f`.`id_cliente`;


/*3 - Quantos registros foram retornados em cada consulta?
A) Selecione o nome da canção (cancoes) e o tipo e arquivo delas [inner]. */
SELECT
	`cancoes`.`nome` AS `CancaoNome`,
    `tipos_de_arquivo`.`nome` AS `TipoDeArquivo`
FROM `cancoes` INNER JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;

/* B) Agora selecione o nome da canção (cancoes) e o tipo e arquivo delas. E
selecione também os tipos de arquivo que não tem musicas. [right]. */
SELECT
	`cancoes`.`nome` AS `CancaoNome`,
    `tipos_de_arquivo`.`nome` AS `TipoDeArquivo`
FROM `cancoes` RIGHT JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;

/* C) Agora selecione o nome da canção (cancoes) e o tipo e arquivo delas. E
selecione também as musicas que não tem tipo de arquivo. [left]. */
SELECT
	`cancoes`.`nome` AS `CancaoNome`,
    `tipos_de_arquivo`.`nome` AS `TipoDeArquivo`
FROM `cancoes` LEFT JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;


/*  Transforme todas as consultas feitas nos exercícios anteriores (A - JOINS) em
views. E salve-as. */
CREATE VIEW `ArtistasAlbuns`
AS SELECT A.nome, T.titulo
FROM `artistas` AS A
INNER JOIN `albuns` AS T
ON A.`id` = T.`id_artista`
ORDER BY A.`id`;

-- Criar VIEW LEFT 
CREATE VIEW `ArtistasLeft`
AS SELECT A.nome, T.titulo
FROM `artistas` AS A LEFT JOIN `albuns` AS T
ON A.`id` = T.`id_artista`
ORDER BY A.`id`;

-- Consultar alguma view
SELECT * 
FROM `artistasalbuns`;

-- Crie Views para as seguintes consultas:;
-- Consultar todas as canções;
CREATE VIEW `TodasAsCancoes` AS
SELECT `nome` FROM `cancoes`;

-- Consultar todas as faturas com valor maior que 5.;
CREATE VIEW `FaturasMaioresQue5` AS
SELECT `valor_total` 
FROM `faturas` 
WHERE `valor_total` > 5;

-- Consultar todos artistas cujo o nome começa com a letra B.;
CREATE VIEW `artistasB` AS
SELECT `nome` FROM `artistas` WHERE nome LIKE ("B%");


 