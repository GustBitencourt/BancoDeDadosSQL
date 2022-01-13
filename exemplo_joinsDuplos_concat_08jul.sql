
-- EXEMPLO dois INNER JOINS;
SELECT 
	`generos`.`nome` AS `GENERO`,
	`cancoes`.`nome` AS `CANCAO`,
    `tipos_de_arquivo`.`nome` AS `TIPOS` 
FROM `generos`
INNER JOIN `cancoes`
ON `generos`.`id` = `cancoes`.`id_genero`
INNER JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;

-- EXEMPLO usando CONCAT E JOINS e o distinct para evitar repetição de dados iguais;
SELECT 
	DISTINCT CONCAT(`clientes`.`nome`, " ", `clientes`.`sobrenome`) AS `nome_completo`,
	`faturas`.`cidade_cobranca`	
FROM `clientes`
INNER JOIN `faturas`
ON `clientes`.`id` = `faturas`.`id_cliente`;
