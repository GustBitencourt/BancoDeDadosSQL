-- selecionando todos
SELECT * FROM `educ_aula08`.`estudantes`;

-- selecionando os 5 primeiro
SELECT * FROM `educ_aula08`.`estudantes` 
LIMIT 5;

-- selecionando os maiores de 21 anos
SELECT * FROM `educ_aula08`.`estudantes`
 WHERE `estudante_idade` > 21;

-- Selecionando os que tem escola id nulo
SELECT * FROM `educ_aula08`.`estudantes` 
WHERE `escola_id` IS NULL;

-- selecionando os que tem idade entre 10 e 21 
SELECT * FROM `educ_aula08`.`estudantes` 
WHERE `estudante_idade` BETWEEN 10 AND 21;

-- SELECIONANDO TODOS MAIORES DE 20 DO MAIS NOVO PRO MAIS VELHO
SELECT * FROM `educ_aula08`.`estudantes`
WHERE `estudante_idade` > 20
ORDER BY `estudante_idade` ASC;

-- selecionando os mais velhos que 20 anos e ordenando alfabeticamente
SELECT * FROM `educ_aula08`.`estudantes`
WHERE `estudante_idade` > 20
ORDER BY `estudante_nome` ASC;

-- selecionando os mais velhos que 20 e ordenando pelo nome de Z a A
SELECT * FROM `educ_aula08`.`estudantes`
WHERE `estudante_idade` > 20
ORDER BY `estudante_idade` DESC;

-- selecionando todos os que começam com C, % significa qualquer coisa nesse exemplo e a letra tem que estrar entre apóstrofo
SELECT * FROM `educ_aula08`.`estudantes`
WHERE `estudante_nome` LIKE 'C%';

-- selecionando aquele que tem sobrenome Andrade
SELECT * FROM `educ_aula08`.`estudantes`
WHERE `estudante_nome` LIKE '%andrade%';

-- selecionando apartir da terceira letra
SELECT * FROM `educ_aula08`.`estudantes`
WHERE `estudante_nome` LIKE '__r%';





