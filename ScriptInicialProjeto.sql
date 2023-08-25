-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS RepubliQ;
USE RepubliQ;

-- Criação da tabela de Usuarios
CREATE TABLE IF NOT EXISTS Usuarios (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(50) NOT NULL,
    senha VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    IsProprietario BOOLEAN,
    idCasaOfertada BIGINT,
    CPF VARCHAR(30) NOT NULL,
    idMorSolicitado BIGINT,
    UNIQUE KEY unique_CPF(CPF),
    UNIQUE KEY unique_email (email)
);

-- Criação da tabela de Moradias
CREATE TABLE IF NOT EXISTS Moradias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    endereco VARCHAR(200) NOT NULL,
    tipo VARCHAR(50),
    descricao VARCHAR(300),
    prop_id BIGINT,
    FOREIGN KEY (prop_id) REFERENCES Usuarios(id)
);
