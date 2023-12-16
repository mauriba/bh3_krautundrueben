CREATE DATABASE krautundrueben CHARACTER SET utf8;
USE krautundrueben;

CREATE TABLE kunde (
	KdNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Vorname VARCHAR(50),
	Nachname VARCHAR(50),
	Geburtsdatum DATE,
	Strasse VARCHAR(50),
	HausNr VARCHAR(10),
	PLZ VARCHAR(10),
	Ort VARCHAR(50),
	Telefon VARCHAR(20),
	Email VARCHAR(50)
);

CREATE TABLE lieferant (
	LiefNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Ort VARCHAR(50),
	Strasse VARCHAR(50),
	LiefName VARCHAR(50),
	PLZ VARCHAR(10),
	HausNr VARCHAR(10),
	Telefon VARCHAR(20),
	Email VARCHAR(50)
);

CREATE TABLE bestellung (
	BestellNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Gesamtpreis FLOAT,
	Bestelldatum DATE
);

CREATE TABLE zutat (
	ZutatNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ZutatName VARCHAR(50),
	Einheit VARCHAR(10),
	Nettopreis FLOAT,
	Bestand INT,
	Kalorien INT,
	Kohlenhydrate FLOAT,
	Proteine FLOAT
);

CREATE TABLE beschraenkung (
	BeschNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	BeschName VARCHAR (50)
);

CREATE TABLE rezept (
	RezeptNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	RezeptName VARCHAR(50)
);

CREATE TABLE kategorie (
	KatNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	KatName VARCHAR(50)
);

CREATE TABLE zutatinbestellung (
	Menge FLOAT,
	BestellNr INT,
	ZutatNr INT,
   FOREIGN KEY (BestellNr) REFERENCES Bestellung(BestellNr),
   FOREIGN KEY (ZutatNr) REFERENCES Zutat(ZutatNr),
   PRIMARY KEY (BestellNr, ZutatNr)
);

CREATE TABLE zutatbeschraenkung (
	ZutatNr INT,
	BeschNr INT,
	FOREIGN KEY (ZutatNR) REFERENCES Zutat(ZutatNr),
	FOREIGN KEY (BeschNr) REFERENCES Beschraenkung(BeschNr),
	PRIMARY KEY (BeschNr, ZutatNr)
);

CREATE TABLE kundenbeschraenkung (
	BeschNr INT,
	KdNr INT,
	FOREIGN KEY (BeschNr) REFERENCES Beschraenkung(BeschNr),
	FOREIGN KEY (KdNr) REFERENCES Kunde(KdNr),
	PRIMARY KEY (BeschNr, KdNr)
);

CREATE TABLE zutatinrezept (
	Menge FLOAT,
	RezeptNr INT,
	ZutatNr INT,
   FOREIGN KEY (RezeptNr) REFERENCES Rezept(RezeptNr),
   FOREIGN KEY (ZutatNr) REFERENCES Zutat(ZutatNr),
   PRIMARY KEY (RezeptNr, ZutatNr)
);

CREATE TABLE kategoriefuerrezept (
	KatNr INT,
	RezeptNr INT,
	FOREIGN KEY (KatNr) REFERENCES Kategorie(KatNR),
	FOREIGN KEY (RezeptNr) REFERENCES Rezept(RezeptNr),
	PRIMARY KEY (KatNr, RezeptNr)
);

ALTER TABLE bestellung ADD COLUMN KdNr INT, ADD CONSTRAINT FK_KdNr FOREIGN KEY (KdNr) REFERENCES Kunde(KdNr);
ALTER TABLE zutat ADD COLUMN LiefNr INT, ADD CONSTRAINT FK_LiefNr FOREIGN KEY (LiefNr) REFERENCES Lieferant(LiefNr);
