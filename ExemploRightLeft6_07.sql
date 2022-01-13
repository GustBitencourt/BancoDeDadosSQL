UPDATE faturas SET id_cliente = NULL WHERE id_cliente > 50;

UPDATE cancoes SET cancoes.id_tipo_de_arquivo = NULL WHERE cancoes.id > 850;


-- Consulta onde o nome da canção e seu tipo de arquivo INNER JOIN nao;
-- mostrara nenhuma musica nula e nem tipo de arquivo sem musica;
SELECT
	`cancoes`.`nome` AS `CancaoNome`,
    `tipos_de_arquivo`.`nome` AS `TipoDeArquivo`
FROM `cancoes` INNER JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;

-- Mostra todas as cançoes independente se tenha tipo de arquivo ou nao;
SELECT
	`cancoes`.`nome` AS `CancaoNome`,
    `tipos_de_arquivo`.`nome` AS `TipoDeArquivo`
FROM `cancoes` LEFT JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`;

-- Mostra todos os tipos de arquivo estando relacionado a uma cancao ou nao;
SELECT
	`cancoes`.`nome` AS `CancaoNome`,
    `tipos_de_arquivo`.`nome` AS `TipoDeArquivo`
FROM `cancoes` RIGHT JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`; 




