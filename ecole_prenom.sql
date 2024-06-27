CREATE DATABASE ecole_prenom;

USE ecole_prenom;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    date_naissance DATE NOT NULL,
    adresse VARCHAR(255),
    cp VARCHAR(10),
    ville VARCHAR(255),
    tel VARCHAR(20),
    email VARCHAR(255)
);

CREATE TABLE cours (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    professeur_id INT,
    FOREIGN KEY (professeur_id) REFERENCES users(id)
);

CREATE TABLE inscriptions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cours_id INT,
    eleve_id INT,
    FOREIGN KEY (cours_id) REFERENCES cours(id),
    FOREIGN KEY (eleve_id) REFERENCES users(id)
);
