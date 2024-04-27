-- 1 - Buscar o nome e ano dos filmes
SELECT 
	nome as Nome,
	ano as Ano
FROM filmes

-- 2 - Buscar o nome e o ano dos filmes, ordenados por ano

SELECT 
	nome as Nome,
	ano as Ano
FROM filmes
ORDER BY ano 

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT 
	nome,
	ano,
	duracao
FROM filmes
WHERE nome = 'De volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997

SELECT 
	nome,
	ano,
	duracao
FROM filmes
WHERE ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT 
	nome,
	ano,
	duracao
FROM filmes
WHERE ano > 2000
ORDER BY ano

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT 
	nome,
	ano,
	duracao
FROM filmes
WHERE duracao > 100 and duracao < 150
ORDER BY duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT
    ano AS Ano,
    COUNT(ano) AS Quantidade
FROM
    Filmes
GROUP BY ano 
ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT 
 *
FROM atores
WHERE genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT 
 *
FROM atores
WHERE genero = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero

SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	Filmes 
	INNER JOIN FilmesGenero 
	ON Filmes.Id = FilmesGenero.IdFilme
	INNER JOIN Generos 
	ON Generos.Id = FilmesGenero.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	Filmes 
	INNER JOIN FilmesGenero 
	ON Filmes.Id = FilmesGenero.IdFilme
	INNER JOIN Generos 
	ON Generos.Id = FilmesGenero.IdGenero
WHERE
	Generos.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	Filmes
	INNER JOIN ElencoFilme
	ON Filmes.Id = ElencoFilme.IdFilme
	INNER JOIN Atores
	ON Atores.Id = ElencoFilme.IdAtor