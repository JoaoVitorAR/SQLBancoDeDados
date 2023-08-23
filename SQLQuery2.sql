--1
select Nome, Ano from Filmes

--2
select Nome, Ano
	from Filmes
	order by Ano

--3
select Nome, Ano, Duracao
	from Filmes
	where nome='De Volta para o Futuro'

--4
select Nome, Ano, Duracao
	from Filmes
	where Ano=1997

--5
select Nome, Ano, Duracao
	from Filmes
	where Ano >= 2000

--6 
select Nome, Ano, Duracao
	from Filmes
	where Duracao between 100 and 150
	order by Duracao

--7
select Ano, COUNT(Ano) as Quantidade
	from Filmes
	group by Ano
	order by Quantidade desc

--8 
select * 
	from Atores
	where Genero='M'


--9
select *
	from Atores
	where Genero='F'
	order by PrimeiroNome

--10
select Filmes.Nome, Generos.Genero
	from FilmesGenero
	Inner join Filmes on FilmesGenero.IdFilme=Filmes.Id
	Inner join Generos on FilmesGenero.IdGenero=Generos.Id

--11
select Filmes.Nome, Generos.Genero
	from FilmesGenero
	Inner join Filmes on FilmesGenero.IdFilme=Filmes.Id
	Inner join Generos on FilmesGenero.IdGenero=Generos.Id
	where Generos.Genero='Mistério'

--12
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
	from ElencoFilme
	inner join Filmes on ElencoFilme.IdFilme=Filmes.Id
	inner join Atores on ElencoFilme.IdAtor=Atores.Id
