
-- GRUPO 2
 /* A) Neste exercício em grupo, analise a query designada ao seu grupo
 observando se foram empregadas boas práticas e onde elas podem ser
 melhoradas em relação a isso. */
 -- A QUERIE LIKE deve possuir três caracteres para que no começo da string, pode colocor as queries em letras maiúsculas para melhor visualização;

/* B) Analise a mesma query em relação a ordem de processamento. Faça uma
lista com a ordem de execução. */ 
-- ORDEM de execução FROM,ON, INNER JOIN, WHERE, SELECT, ORDER BY 
SELECT `artistas`.`nome` as `NomeArtista`,
		`albuns`.`titulo` as `NomeAlbum` 
FROM `artistas`
INNER JOIN `albuns`
on `artistas`.`id` = `albuns`.`id_artista`
WHERE `artistas`.`nome` LIKE "%kiss%"
order by `artistas`.`id`;
​
​