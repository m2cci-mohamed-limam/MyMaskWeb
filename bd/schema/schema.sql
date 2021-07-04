CREATE TABLE LesUtilisateurs (
    login VARCHAR(50) PRIMARY KEY,
    motDePasse VARCHAR(50) 
);

CREATE TABLE LesZones(
    numZone INTEGER PRIMARY KEY,
    nomZome VARCHAR(50),
    typeZone VARCHAR(30),
    Contenu TEXT,
    CONSTRAINT Ck01_typeZone CHECK (typeZone in ('Date','TexteFixe','Nombre','Prix','TexteVariable','Poids','Code','Graphique'))
);

CREATE TABLE LesMasques(
    numMasque INTEGER PRIMARY KEY,
    nomMasque VARCHAR(100),
    taille VARCHAR(10),
    login VARCHAR(50),
    CONSTRAINT FK01_login FOREIGN KEY (login) REFERENCES LesUtilisateurs(login)
);

CREATE TABLE LesComposants(
    numMasque INTEGER,
    numZone INTEGER,
    CONSTRAINT PK_numMasque_numZone PRIMARY KEY (numMasque,numZone),
    CONSTRAINT FK01_numMasque FOREIGN KEY (numMasque) REFERENCES LesMasques(numMasque),
    CONSTRAINT FK02_numZone FOREIGN KEY (numZone) REFERENCES LesZones(numZone)
);

CREATE TABLE LesEtiquettes(
    PLU INTEGER PRIMARY KEY,
    Designation VARCHAR(100),
    numParamEtq INTEGER,
    NumParamAutomate INTEGER,
    numMasque INTEGER,
    CONSTRAINT FK01_numMasque FOREIGN KEY (numMasque) REFERENCES LesMasques(numMasque)
);