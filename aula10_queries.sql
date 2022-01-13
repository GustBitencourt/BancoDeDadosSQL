SELECT `clientes`.`id`,
	`clientes`.`nome`,
    `faturas`.`valor_total`
FROM `clientes`
INNER JOIN `faturas`
ON `clientes`.`id` = `faturas`.`id_cliente`
HAVING `faturas`.`valor_total` > 10
ORDER BY `clientes`.`nome` DESC;

-- Nomes abreviados;
SELECT `c`.`id`,
	`c`.`nome`,
    `f`.`valor_total`
FROM `clientes` AS `c`
INNER JOIN `faturas` AS `f`
ON `c`.`id` = `f`.`id_cliente`
HAVING `f`.`valor_total` > 10
ORDER BY `c`.`nome` DESC;