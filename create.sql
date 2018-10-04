CREATE TABLE pet (
    petId VARCHAR(36) PRIMARY KEY,
    nomeDono VARCHAR(100) NOT NULL,
    petName VARCHAR(100) NOT NULL,
    petCategoria VARCHAR(50) NOT NULL,
    raca VARCHAR(100) NOT NULL,
    petCor VARCHAR(100) NOT NULL,
    petDtNasc date NOT NULL,
    sexo VARCHAR(10) NOT NULL,
	 createdAt datetime,
    updatedAt datetime,
    petPeso DECIMAL(5,2) NOT NULL,
    adocao BOOLEAN NOT NULL,
    deleted BOOLEAN NOT NULL
)