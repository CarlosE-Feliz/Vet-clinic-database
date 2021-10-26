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

UPDATE animals 
SET species =  'digimon'
WHERE name like '%mon';

UPDATE animals
SET species =  'pokemon'
WHERE species IS NULL

COMMIT TRAN

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