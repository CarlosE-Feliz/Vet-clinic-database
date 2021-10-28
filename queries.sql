/*Queries that provide answers to the questions from all projects.*/

SELECT *
from animals 
WHERE name like '%mon';

SELECT name
from animals
WHERE date_of_birth BETWEEN '1/01/2016' AND '1/01/2019'

SELECT name
from animals
WHERE neutered = true
AND escape_attempts < 3

SELECT date_of_birth
from animals
WHERE name = 'Pikachu'
or name = 'Agumon'

SELECT name, escape_attempts
from animals
WHERE weight_kg > 10.5

SELECT *
from animals 
WHERE neutered = true

SELECT *
from animals 
WHERE name != 'Gabumon'

SELECT *
from animals
WHERE weight_kg >= 10.4
AND weight_kg <= 17.3

BEGIN TRAN 

DELETE FROM animals
WHERE date_of_birth > '01/01/2022'
SAVEPOINT delete_animals;


UPDATE animals 
SET weight_kg = weight_kg * -1
ROLLBACK TO SAVEPOINT delete_animals;

UPDATE animals 
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

COMMIT TRAN

SELECT count(id) FROM animals;

SELECT COUNT(escape_attempts) FROM animals
WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT AVG(escape_attempts) FROM animals
WHERE neutered = true;

SELECT AVG(escape_attempts) FROM animals
WHERE neutered = false;

SELECT MAX(weight_kg) FROM animals;

SELECT MIN(weight_kg) FROM animal;

SELECT AVG(escape_attempts) FROM animals
WHERE date_of_brith BETWEEN '01/01/1999' AND '01/01/2000';


UPDATE animals
SET id_species = 2
WHERE id_species IS NULL

UPDATE animals 
SET id_species =  1
WHERE name like '%mon';

UPDATE animals 
SET id_owners =  1
WHERE name like 'Agumon';

UPDATE animals 
SET id_owners =  2
WHERE name in ('Gabumon', 'Pikachu');

UPDATE animals 
SET id_owners =  3
WHERE name in ('Devimon', 'Plantmon');


UPDATE animals 
SET id_owners =  4
WHERE name in ( 'Charmander', 'Squirtle', 'Blossom');

UPDATE animals 
SET id_owners =  5
WHERE name in (  'Angemon', 'Boarmon');


SELECT A.id_owners, O.full_name, count(*) as Total
FROM animals A
INNER JOIN owners O on (A.id_owners = O.id_owners) 
GROUP BY A.id_owners, O.full_name
ORDER BY 3 DES

SELECT COUNT(id_species) FROM animals
WHERE id_species  = 1

SELECT COUNT(id_species) FROM animals
WHERE id_species  = 2

SELECT A.name, A.id_owners, O.full_name
FROM animals A
LEFT join owners O on (A.id_owners = O.id_owners)

SELECT O.name
FROM species O
INNER JOIN animals A on (O.id_species = A.id_owners)

SELECT O.id_owners, full_name, A.id_animals
FROM owners O
INNER JOIN animals A on (O.id_owners = 5 AND A.neutered = false)
GROUP BY A.id_animals, O.id_owners

SELECT id_owners, count(*) FROM animals 
    GROUP BY id_owners
    HAVING COUNT(*)>2;