-- TABELA FATURAS;
-- 1 - O valor da fatura mais alta cujo a cidade de cobrança é “Oslo”. (MAX);
SELECT MAX(`valor_total`) FROM `faturas`
WHERE `cidade_cobranca` = "Oslo";

-- 2 - O valor da fatura mais baixa de todas. (MIN);
SELECT MIN(`valor_total`) FROM `faturas`;

-- 3 - O valor médio das faturas que o país de cobrança é “Canada”.(AVG);
SELECT AVG(`valor_total`) FROM `faturas` 
WHERE `pais_cobranca` = "Canada";

-- 4 - A quantidade de faturas que o país de cobrança é “Canada”. (COUNT);
SELECT COUNT(*) FROM `faturas`
WHERE `pais_cobranca` = "Canada";

-- 5 - O valor total somado de todas as faturas. (SUM);
SELECT SUM(`valor_total`) FROM `faturas`;

-- 6 - Selecione o id, a data e valor das faturas com valor abaixo da média. (Subqueries e AVG)
SELECT `id`, `data_fatura`, `valor_total` FROM `faturas` 
WHERE `valor_total` < (SELECT AVG(`valor_total`) FROM `faturas`);

-- TABELA EMPREGADOS;
-- 7 - A data de nascimento do funcionário mais jovem da empresa (MAX);
SELECT MAX(`data_nascimento`) FROM `empregados`;

-- 8 - A data de nascimento do funcionário mais velho da empresa  (MIN);
SELECT MIN(`data_nascimento`) FROM `empregados`;

-- 9 - Formate a data do nascimento dos funcionários no formato ex: "02 May 2020"(DATE_FORMAT)
SELECT DATE_FORMAT(`data_nascimento`, "%d %M %Y") FROM `empregados`;

-- TABELA CANÇÕES;
-- 10 - O numero de cancoes que tem como compositor “AC/DC”. (COUNT);
SELECT COUNT(*) FROM `cancoes`
WHERE `compositor` = "AC/DC";

-- 11 - A duração média da duração das músicas em milisegundos (AVG);
SELECT AVG(`duracao_segundos`) FROM `cancoes`; 

-- 12 - O tamanho médio em bytes das músicas que como compositor “AC/DC”. (AVG);
SELECT AVG(`bytes`) FROM `cancoes`
WHERE `compositor` = "AC/DC";

-- CLIENTES;
-- 13 - Quantidade de clientes que moram na cidade de “São Paulo”(COUNT);
SELECT COUNT(*) FROM `clientes`
WHERE `cidade` = "São Paulo";

-- 14 - Quantidade de clientes que moram em “Paris” (COUNT);
SELECT COUNT(`id`) FROM `clientes`
WHERE `cidade` = "Paris";

-- 15 - Quantidade de clientes que tenham email do “yahoo” (COUNT e LIKE);
SELECT COUNT(`id`) FROM `clientes` 
WHERE `email` LIKE'%yahoo%';

