/* Populate database with sample data. */
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Agumon',
'02/03/2020',
0,
false,
10.23
);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ()
'Gabumon',
'11/15/2018',
2,
true,
8
);

INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Pikachu',
'01/07/2021',
1,
false,
15.04
);

INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Devimon',
'05/12/2017',
5,
true,
11
);


INSERT INTO animals ( name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Charmander',
'02/08/2020',
0,
false,
11
);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Plantmon',
'11/15/2022',
2,
true,
5.7
);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Squirtle',
'04/02/1993',
3,
false,
12.13

);


INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Angemon',
'06/12/2005',
1,
true,
45
);


INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Boarmon',
'06/07/2005',
7,
true,
20.4
);


INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (
'Blossom',
'10/13/1998',
3,
true,
17
);

INSERT INTO owners (id_owners, full_name, age)
VALUES (1,'Sam Smith', 34);

INSERT INTO owners(id_owners, full_name, age)
VALUES (2,'Jennifer Orwell', 19);

INSERT INTO owners(id_owners, full_name, age)
VALUES (3,'Bob', 45);

INSERT INTO owners(id_owners, full_name, age)
VALUES (4,'Melody Pond', 77);

INSERT INTO owners(id_owners, full_name, age)
VALUES (5, 'Dean Winchester', 14);

INSERT INTO owners(id_owners, full_name, age)
VALUES (6,'Jodie Whittaker', 38);



INSERT INTO species (id_species, name)
VALUES(1, 'Pokemon');
INSERT INTO species (id_species, name)
VALUES(2, 'Digimon');


INSERT INTO vets (id_vets, name_vets, age, date_of_graduation)
VALUES(01, 'William Tatcher', 45, '04/23/200');

INSERT INTO vets (id_vets, name_vets, age, date_of_graduation)
VALUES(02, 'Maisy Smith', 26, '01/17/2019');

INSERT INTO vets (id_vets, name_vets, age, date_of_graduation)
VALUES(03, 'Stephanie Mendez', 64, '04/01/1981');

INSERT INTO vets (id_vets, name_vets, age, date_of_graduation)
VALUES(04, 'Jack Harkness', 38, '06/08/2008');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Agumon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'William Tatcher'), '2020-05-24');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Agumon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Stephanie Mendez'), '2020-06-22');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Gabumon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Jack Harkness'), '2021-02-02');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Pikachu'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-01-05');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Pikachu'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-03-08');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Pikachu'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-05-14');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Devimon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Stephanie Mendez'), '2021-05-04');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Charmander'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Jack Harkness'), '2021-02-24');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Plantmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2019-12-21');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Plantmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'William Tatcher'), '2020-08-10');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Plantmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-04-07');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Squirtle'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Stephanie Mendez'), '2020-09-29');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Angemon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Jack Harkness'), '2020-10-03');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Angemon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Jack Harkness'), '2020-11-04');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Boarmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2019-01-24');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Boarmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2019-05-15');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Boarmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-02-27');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Boarmon'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Maisy Smith'), '2020-08-03');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Blossom'), 
(SELECT id_vets FROM vets WHERE name_vets = 'Stephanie Mendez'), '2020-05-24');

INSERT INTO visits (id_animal, id_vet, date_visit) 
VALUES ((SELECT id_animals FROM animals WHERE name = 'Blossom'), 
(SELECT id_vets FROM vets WHERE name_vets = 'William Tatcher'), '2021-01-11');