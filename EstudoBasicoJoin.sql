-- CONTANDO A QUANTIDADE DE CANÇÕES POR GENERO;
SELECT count(`cancoes`.`id`) AS `qtd_cancoes`,
	`generos`.`nome`
FROM `cancoes`
INNER JOIN `generos`
ON `cancoes`.`id_genero` = `generos`.`id`
GROUP BY `generos`.`nome`  -- AGRUPA OS RESULTADOS
ORDER BY `qtd_cancoes` DESC; -- ORDENA DO MAIOR PRO MENOR


-- Na tabela empregados, o empregado que faz aniversário em 12 de setembro de 1984 é:
SELECT `empregados`.`nome`
FROM `empregados`
WHERE `data_nascimento` = '1984-09-12';

-- O País que tem a maior quantidade de clientes e, consequentemente, o maior valor de faturas acumuladas é:
SELECT
	`clientes`.`pais` AS `pais`,
    count(`clientes`.`id`) AS `qtd_clientes`, -- contando os clientes pelo id
    SUM(`faturas`.`valor_total`) AS `soma_faturas` -- soma as faturas
FROM `clientes`
INNER JOIN `faturas`
ON `clientes`.`id` = `faturas`.`id_cliente`
GROUP BY `clientes`.`pais` -- agrupando os resultados de clientes
ORDER BY `qtd_clientes` DESC; -- ordenando;

-- Para mostrar as tabelas de um banco de dados, utilizamos o comando
SHOW TABLES;
