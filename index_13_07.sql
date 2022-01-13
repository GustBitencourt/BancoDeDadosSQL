-- 1) Exiba os índices da tabela. (Show Index).
SHOW INDEX FROM `cancoes`;

/* Execute um explain select selecionando o campo
nome da canção “Hero” e observe quantas rows foram
percorridas para chegar ao resultado. */
EXPLAIN SELECT `nome` FROM `cancoes` WHERE `nome` = "Hero";

/* Crie um índice chamado `I_cancoes_nome` para a
tabela pelo campo nome. */
CREATE INDEX `i_cancoes_nome` ON `cancoes`(`nome`);

/* Execute o explain novamente e veja quantas rows
foram percorridas agora. */
EXPLAIN SELECT `nome` FROM `cancoes` WHERE `nome` = "Hero";

-- Exclua esse indice;
DROP INDEX `i_cancoes_nome` ON `cancoes`;


 
-- 2)Exiba os índices da tabela. (Show Index).
SHOW INDEX FROM `albuns`;
​
/* Execute um explain select selecionando o título do
álbum chamado “Na Pista” e observe quantas rows
foram percorridas para chegar ao resultado. */
EXPLAIN select `titulo` FROM `albuns` WHERE `titulo` = "Na Pista";

/* Crie um índice chamado `I_albuns_titulo` para a
tabela pelo campo nome. */
CREATE INDEX `I_albuns_titulo` ON `albuns` (`titulo`);
​
/* Execute o explain novamente e veja quantas rows
foram percorridas agora. */
EXPLAIN select `titulo` FROM `albuns` WHERE `titulo` = "Na Pista";
​
-- Exclua esse indice;
DROP INDEX `I_ALBUNS_TITULO` on `cancoes`;