SELECT * FROM `clientes`;
SELECT * FROM `faturas`;

-- EXEMPLO;
SELECT
	`c`.`pais` AS `pais`,
    count(`c`.`id`) AS `qtd_clientes`,
    AVG(`f`.`valor_total`) AS `media_faturas`
FROM `clientes` AS `c`
INNER JOIN `faturas` AS `f`
ON `c`.`id` = `f`.`id_cliente`
GROUP BY `c`.`pais`
HAVING `qtd_clientes` > 3
ORDER BY `qtd_clientes` DESC
LIMIT 7;

-- 1) Liste a quantidade de canções existem para cada gênero musical,
-- agrupando a consulta por gênero e ordenando da maior quantidade para a menor.;
SELECT count(`cancoes`.`id`) AS `qtd_cancoes`,
	`generos`.`nome`
FROM `cancoes`
INNER JOIN `generos`
ON `cancoes`.`id_genero` = `generos`.`id`
GROUP BY `generos`.`nome`
ORDER BY `qtd_cancoes` DESC;


-- 2) Liste a quantidade de canções existentes para gênero musical,
-- agrupando por gênero. Exiba apenas os genêros que tem mais de 10 canções.;
SELECT count(`cancoes`.`id`) AS `qtd_cancoes`,
	`generos`.`nome`
FROM `cancoes`
INNER JOIN `generos`
ON `cancoes`.`id_genero` = `generos`.`id`
GROUP BY `generos`.`nome`
HAVING `qtd_cancoes` > 10
ORDER BY `qtd_cancoes` DESC;


-- 3) Utilizando as tabelas clientes e faturas, liste os países,a quantidade de clientes e a soma das faturas por país,
-- ordenando do maior para o menor, limitando a consulta a 7 registros.;
SELECT
	`c`.`pais` AS `pais`,
    count(`c`.`id`) AS `qtd_clientes`,
    SUM(`f`.`valor_total`) AS `soma_faturas`
FROM `clientes` AS `c`
INNER JOIN `faturas` AS `f`
ON `c`.`id` = `f`.`id_cliente`
GROUP BY `c`.`pais`
HAVING `qtd_clientes` > 3
ORDER BY `qtd_clientes` DESC;

