-- Ex 1
SELECT
	Filmes.Nome,
	Filmes.Ano
FROM Filmes

-- Ex 2
SELECT
	Filmes.Nome,
	Filmes.Ano
FROM Filmes
ORDER BY Ano

-- Ex 3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- Ex 4
SELECT * FROM Filmes
WHERE Ano = 1997;

-- Ex 5
SELECT
	Filmes.Nome,
	Filmes.Ano,
	Filmes.Duracao
FROM Filmes
WHERE Ano > 2000;

-- Ex 6
SELECT
	Filmes.Nome,
	Filmes.Ano,
	Filmes.Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- Ex 7
SELECT
	Ano,
	COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- Ex 8
SELECT
	Atores.Id,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	Atores.Genero
FROM Atores
WHERE Genero = 'M';

-- Ex 9
SELECT
	Atores.Id,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	Atores.Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- Ex 10
SELECT
    Filmes.Nome AS Nome,
    Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- Ex 11
SELECT
    Filmes.Nome AS Nome,
    Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

-- Ex 12
SELECT
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM ElencoFilme
JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;