-- view de nome sobrenome de funcionario com contato e email em ordem alfabetica;
CREATE VIEW `contatoEmpregados` AS
SELECT `nome`, `sobrenome`, `telefone`, `email`
FROM `empregados` ORDER BY `nome`;

-- Selecionando a view apos a criacao;
SELECT * FROM `contatoempregados`;


-- VIEW de aniversarianste do mes;
CREATE VIEW `aniversariantes` AS
SELECT `nome`,`sobrenome`,`email`, DAY(`data_nascimento`)
FROM `empregados`
WHERE MONTH(`data_nascimento`) = MONTH(NOW());

-- Selecionando a view apos a criacao;
SELECT * FROM `aniversariantes`;