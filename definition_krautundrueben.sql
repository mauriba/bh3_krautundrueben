# Dump old database, create new one
DROP DATABASE krautundrueben;
CREATE DATABASE krautundrueben CHARACTER SET utf8;
USE krautundrueben;

CREATE TABLE kunde (
	KdNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Vorname VARCHAR(50),
	Name VARCHAR(50),
	Strasse VARCHAR(50),
	Geburtsdatum DATE,
	HausNr INT,
	PLZ VARCHAR(10),
	Stadt VARCHAR(50)
);

CREATE TABLE lieferant (
	LiefNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Stadt VARCHAR(50),
	Strasse VARCHAR(50),
	Name VARCHAR(50),
	PLZ VARCHAR(10),
	HausNr INT
);

CREATE TABLE bestellung (
	BestellNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Gesamtpreis INT,
	Datum DATE
);

CREATE TABLE zutat (
	ZutatNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ZutatName VARCHAR(50),
	Bestand FLOAT,
	Nettopreis FLOAT,
	Mengeneinheit INT,
	KohlenhydrateProEinheit FLOAT,
	KalorienProEinheit INT,
	FettProEinheit INT
);

CREATE TABLE beschraenkung (
	BeschNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	BeschName VARCHAR (50)
);

CREATE TABLE rezept (
	RezeptNr INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(50),
	Kalorien FLOAT,
	Proteine FLOAT,
	Kohlenhydrate FLOAT,
	Zucker FLOAT,
	Fett FLOAT,
	FettGesaettigt FLOAT,
	Ballaststoffe FLOAT,
	Natrium FLOAT
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
	BeschNr INT,
	ZutatNr INT,
	FOREIGN KEY (BeschNr) REFERENCES Beschraenkung(BeschNr),
	FOREIGN KEY (ZutatNR) REFERENCES Zutat(ZutatNr),
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
ALTER TABLE bestellung ADD COLUMN KdNr INT, ADD CONSTRAINT KdNr FOREIGN KEY (KdNr) REFERENCES Kunde(KdNr);
