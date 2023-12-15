-- Create Tables
CREATE TABLE Kunde (
    KdNr INTEGER PRIMARY KEY,
    Vorname TEXT,
    Name TEXT,
    Strasse TEXT,
    Geburtsdatum TIMESTAMP,
    HausNr INTEGER,
    PLZ INTEGER,
    Stadt TEXT
);

CREATE TABLE Bestellung (
    BestellNr INTEGER PRIMARY KEY,
    Gesamtpreis FLOAT,
    Datum TIMESTAMP
);

CREATE TABLE Zutat (
    ZutatNr INTEGER PRIMARY KEY,
    ZutatName TEXT,
    Bestand FLOAT,
    Nettopreis FLOAT,
    Mengeneinheit INTEGER,
    KohlenhydrateProEinheit FLOAT,
    KalorienProEinheit INTEGER,
    FettProEinheit FLOAT
);

CREATE TABLE Lieferant (
    LiefNr INTEGER PRIMARY KEY,
    Stadt TEXT,
    Strasse TEXT,
    Name TEXT,
    PLZ INTEGER,
    HausNr INTEGER
);

CREATE TABLE Rezept (
    RezeptNr INTEGER PRIMARY KEY,
    Name TEXT,
    Kalorien FLOAT,
    Proteine FLOAT,
    Kohlenhydrate FLOAT,
    Zucker FLOAT,
    Fett FLOAT,
    FettGesaettigt FLOAT,
    Ballaststoffe FLOAT,
    Natrium FLOAT
);

CREATE TABLE Ernaehrungskategorie (
    KatNr INTEGER PRIMARY KEY,
    KategorieName TEXT
);

CREATE TABLE Beschraenkung (
    BeschNr INTEGER PRIMARY KEY,
    BeschraenkungName TEXT
);

CREATE TABLE ZutatInBestellung (
    ID INTEGER PRIMARY KEY,
    BestellNr INTEGER,
    ZutatNr INTEGER,
    Menge FLOAT,
    FOREIGN KEY (BestellNr) REFERENCES Bestellung(BestellNr),
    FOREIGN KEY (ZutatNr) REFERENCES Zutat(ZutatNr)
);

CREATE TABLE ZutatInRezept (
    ID INTEGER PRIMARY KEY,
    RezeptNr INTEGER,
    ZutatNr INTEGER,
    Menge FLOAT,
    FOREIGN KEY (RezeptNr) REFERENCES Rezept(RezeptNr),
    FOREIGN KEY (ZutatNr) REFERENCES Zutat(ZutatNr)
);

CREATE TABLE KundenBeschraenkung (
    ID INTEGER PRIMARY KEY,
    KdNr INTEGER,
    BeschNr INTEGER,
    FOREIGN KEY (KdNr) REFERENCES Kunde(KdNr),
    FOREIGN KEY (BeschNr) REFERENCES Beschraenkung(BeschNr)
);

CREATE TABLE ZutatBeschraenkung (
    ID INTEGER PRIMARY KEY,
    ZutatNr INTEGER,
    BeschNr INTEGER,
    FOREIGN KEY (ZutatNr) REFERENCES Zutat(ZutatNr),
    FOREIGN KEY (BeschNr) REFERENCES Beschraenkung(BeschNr)
);

CREATE TABLE KategorieFuerRezept (
    ID INTEGER PRIMARY KEY,
    RezeptNr INTEGER,
    KatNr INTEGER,
    FOREIGN KEY (RezeptNr) REFERENCES Rezept(RezeptNr),
    FOREIGN KEY (KatNr) REFERENCES Ernaehrungskategorie(KatNr)
);

-- Insert Example Data
-- Insert example data into each table (2 examples per table)
-- Please replace these with your actual data

-- Kunde
INSERT INTO Kunde VALUES (1, 'Max', 'Mustermann', 'Musterstraße', '1990-01-01', 10, 12345, 'Musterstadt');
INSERT INTO Kunde VALUES (2, 'Erika', 'Musterfrau', 'Beispielstraße', '1992-02-02', 20, 23456, 'Beispielstadt');

-- Bestellung
INSERT INTO Bestellung VALUES (1, 100.50, '2023-12-01');
INSERT INTO Bestellung VALUES (2, 50.25, '2023-12-02');

-- Zutat
INSERT INTO Zutat VALUES (1, 'Tomaten', 100, 0.50, 1, 5, 20, 0.2);
INSERT INTO Zutat VALUES (2, 'Gurken', 200, 0.30, 1, 4, 15, 0.1);

-- Lieferant
INSERT INTO Lieferant VALUES (1, 'Lieferstadt', 'Lieferstraße', 'Liefer GmbH', 34567, 30);
INSERT INTO Lieferant VALUES (2, 'Versandstadt', 'Versandstraße', 'Versand AG', 45678, 40);

-- Rezept
INSERT INTO Rezept VALUES (1, 'Tomatensuppe', 100, 5, 20, 10, 5, 2, 4, 1);
INSERT INTO Rezept VALUES (2, 'Gurkensalat', 80, 2, 15, 5, 3, 1, 3, 0.5);

-- Ernaehrungskategorie
INSERT INTO Ernaehrungskategorie VALUES (1, 'Vegetarisch');
INSERT INTO Ernaehrungskategorie VALUES (2, 'Vegan');

-- Beschraenkung
INSERT INTO Beschraenkung VALUES (1, 'Glutenfrei');
INSERT INTO Beschraenkung VALUES (2, 'Laktosefrei');

-- ZutatInBestellung
INSERT INTO ZutatInBestellung VALUES (1, 1, 1, 10);
INSERT INTO ZutatInBestellung VALUES (2, 1, 2, 5);

-- ZutatInRezept
INSERT INTO ZutatInRezept VALUES (1, 1, 1, 3);
INSERT INTO ZutatInRezept VALUES (2, 2, 2, 2);

-- KundenBeschraenkung
INSERT INTO KundenBeschraenkung VALUES (1, 1, 1);
INSERT INTO KundenBeschraenkung VALUES (2, 2, 2);

-- ZutatBeschraenkung
INSERT INTO ZutatBeschraenkung VALUES (1, 1, 1);
INSERT INTO ZutatBeschraenkung VALUES (2, 2, 2);

-- KategorieFuerRezept
INSERT INTO KategorieFuerRezept VALUES (1, 1, 1);
INSERT INTO KategorieFuerRezept VALUES (2, 2, 2);
