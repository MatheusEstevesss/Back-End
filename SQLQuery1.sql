CREATE DATABASE Filmes;

USE Filmes;

CREATE TABLE Genero(
	IDGenero INT PRIMARY KEY IDENTITY,
	Nome	 VARCHAR (255) UNIQUE NOT NULL
);

CREATE TABLE Filme(
	IDFilme	INT PRIMARY KEY IDENTITY,
	Titulo	VARCHAR (255) UNIQUE NOT NULL,
	Nome	INT FOREIGN KEY REFERENCES Genero (IDGenero)
);

INSERT INTO Genero (Nome)
VALUES ('Drama'), ('Ação');

INSERT INTO Filme (Titulo, Nome)
VALUES ('A vida é bela', 1), ('Rambo', 2);

SELECT * FROM Filme;

SELECT Titulo, Genero.Nome as Genero FROM Filme
INNER JOIN Genero ON Filme.Nome = Genero.IDGenero