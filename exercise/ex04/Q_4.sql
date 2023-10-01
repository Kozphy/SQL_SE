

-- https://en.wikibooks.org/wiki/SQL_Exercises/Movie_theatres

-- 4.1 Select the title of all movies.
select title from Movies;

-- 4.2 Show all the distinct ratings in the database.
select distinct Rating  from Movies; 

-- 4.3  Show all unrated movies.
select Rating from Movies where Rating is null;

-- 4.4 Select all movie theaters that are not currently showing a movie.
select * from MovieTheaters 
where Movie is null;

select * from MovieTheaters;
select * from Movies;

-- 4.5 Select all data from all movie theaters 
-- and, additionally, the data from the movie that 
-- is being shown in the theater (if one is being shown).
select * 
from MovieTheaters join Movies on
MovieTheaters.Movie = Movies.Code;

-- 4.6 Select all data from all movies and, 
-- if that movie is being shown in a theater, 
-- "show the data from the theater".
select * from MovieTheaters left join Movies
on MovieTheaters.Code = Movies.Code;

-- 4.7 Show the titles of movies not currently being shown in any theaters.
select title from Movies join MovieTheaters 
on Movies.Code = MovieTheaters.Code
where MovieTheaters.Movie is null;


-- 4.8 Add the unrated movie "One, Two, Three".
insert into [dbo].[Movies] (Code, Title, Rating) 
values 
(9, 'One', 'G'),
(10, 'Two', 'PG'),
(11, 'Three', 'NC-17');

insert into Movies (Title, Rating)
values
('One', 'Two', 'Three', NULL);

select * from Movies;

-- 4.9 Set the rating of all unrated movies to "G".
select * from Movies where Rating = N'G';

-- 4.10 Remove movie theaters projecting movies rated "NC-17".
select * from Movies where Rating = N'NC-17';