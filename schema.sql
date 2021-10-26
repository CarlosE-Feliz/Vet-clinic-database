/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int NOT NULL  PRIMARY KEY,
	name VARCHAR(30),
	date_of_birth date NOT NULL,
	escape_attempts integer NOT NULL,
	neutered boolean NOT NULL,
	weight_kg integer NOT NULL,
	species VARCHAR(30)
);
