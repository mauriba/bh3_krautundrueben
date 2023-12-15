USE krautundrueben;

INSERT INTO kunde (KdNr, Nachname, Vorname, Geburtsdatum, Strasse, HausNr, PLZ, Ort, Telefon, Email) VALUES
	(2001, 'Wellensteyn','Kira','1990-05-05','Eppendorfer Landstrasse', '104', '20249','Hamburg','040/443322','k.wellensteyn@yahoo.de'),
	(2002, 'Foede','Dorothea','2000-03-24','Ohmstraße', '23', '22765','Hamburg','040/543822','d.foede@web.de'),
	(2003, 'Leberer','Sigrid','1989-09-21','Bilser Berg', '6', '20459','Hamburg','0175/1234588','sigrid@leberer.de'),
	(2004, 'Soerensen','Hanna','1974-04-03','Alter Teichweg', '95', '22049','Hamburg','040/634578','h.soerensen@yahoo.de'),
	(2005, 'Schnitter','Marten','1964-04-17','Stübels', '10', '22835','Barsbüttel','0176/447587','schni_mart@gmail.com'),
	(2006, 'Maurer','Belinda','1978-09-09','Grotelertwiete', '4a', '21075','Hamburg','040/332189','belinda1978@yahoo.de'),
	(2007, 'Gessert','Armin','1978-01-29','Küstersweg', '3', '21079','Hamburg','040/67890','armin@gessert.de'),
	(2008, 'Haessig','Jean-Marc','1982-08-30','Neugrabener Bahnhofstraße', '30', '21149','Hamburg','0178-67013390','jm@haessig.de'),
	(2009, 'Urocki','Eric','1999-12-04','Elbchaussee', '228', '22605','Hamburg','0152-96701390','urocki@outlook.de');

INSERT INTO lieferant (LiefNr, LiefName, Strasse, HausNr, PLZ, Ort, Telefon, Email) VALUES
	(101, 'Bio-Hof Müller', 'Dorfstraße', '74', '24354', 'Weseby', '04354-9080', 'mueller@biohof.de'),
	(102, 'Obst-Hof Altes Land', 'Westerjork 74', '76', '21635', 'Jork', '04162-4523', 'info@biohof-altesland.de'),
	(103, 'Molkerei Henning', 'Molkereiwegkundekunde', '13','19217', 'Dechow', '038873-8976', 'info@molkerei-henning.de');

INSERT INTO zutat (ZutatNr, ZutatName, Einheit, Nettopreis, Bestand, LiefNr, Kalorien, Kohlenhydrate, Proteine) VALUES
	(1001,'Zucchini','Stück', 0.89, 100, 101,19,2,1.6),
	(1002,'Zwiebel','Stück', 0.15, 50, 101, 28, 4.9, 1.20),
	(1003, 'Tomate', 'Stück', 0.45, 50, 101, 18, 2.6, 1),
	(1004, 'Schalotte', 'Stück', 0.20, 500, 101, 25, 3.3, 1.5),
	(1005, 'Karotte', 'Stück', 0.30, 500, 101, 41, 10, 0.9),
	(1006, 'Kartoffel', 'Stück', 0.15, 1500, 101, 71, 14.6, 2),
	(1007, 'Rucola', 'Bund', 0.90, 10, 101, 27, 2.1, 2.6),
	(1008, 'Lauch', 'Stück', 1.2, 35, 101, 29, 3.3, 2.1),
	(1009, 'Knoblauch', 'Stück', 0.25, 250, 101, 141, 28.4, 6.1),
	(1010, 'Basilikum', 'Bund', 1.3, 10, 101, 41, 5.1, 3.1),
	(1011, 'Süßkartoffel', 'Stück', 2.0, 200, 101, 86, 20, 1.6),
	(1012, 'Schnittlauch', 'Bund', 0.9, 10, 101, 28, 1, 3),
	(2001, 'Apfel', 'Stück', 1.2, 750, 102, 54, 14.4, 0.3),
	(3001, 'Vollmilch. 3.5%', 'Liter', 1.5, 50, 103, 65, 4.7, 3.4),
	(3002, 'Mozzarella', 'Packung', 3.5, 20, 103, 241, 1, 18.1),
	(3003, 'Butter', 'Stück', 3.0, 50, 103, 741, 0.6, 0.7),
	(4001, 'Ei', 'Stück', 0.4, 300, 102, 137, 1.5, 11.9),
	(5001, 'Wiener Würstchen', 'Paar', 1.8, 40, 101, 331, 1.2, 9.9),
	(9001, 'Tofu-Würstchen', 'Stück', 1.8, 20, 103, 252, 7, 17),
	(6408, 'Couscous', 'Packung', 1.9, 15, 102, 351, 67, 12),
	(7043, 'Gemüsebrühe', 'Würfel', 0.2, 4000, 101, 1, 0.5, 0.5),
	(6300, 'Kichererbsen', 'Dose', 1.0, 400, 103, 150, 21.2, 9);

INSERT INTO bestellung (KdNr, Bestelldatum, Gesamtpreis) VALUES
	(2001,'2020-07-01', 6.21),
	(2002,'2020-07-08', 32.96),
	(2003,'2020-08-01',24.08),
	(2004,'2020-08-02', 19.90),
	(2005,'2020-08-02', 6.47),
	(2006,'2020-08-10', 6.96),
	(2007,'2020-08-10', 2.41),
	(2008,'2020-08-10', 13.80),
	(2009,'2020-08-10', 8.67),
	(2007,'2020-08-15', 17.98),
	(2005,'2020-08-12', 8.67),
	(2003,'2020-08-13', 20.87);

INSERT INTO zutatinbestellung (BestellNr, ZutatNr, Menge) VALUES
	(1, 1001, 5),
	(1, 1002, 3),
	(1, 1006, 2),
	(1, 1004, 3),
	(2, 9001, 10),
	(2, 1005, 5),
	(2, 1003, 4),
	(2, 6408, 5),
	(3, 6300, 15),
	(3, 3001, 5),
	(4, 5001, 7),
	(4, 3003, 2),
	(5, 1002, 4),
	(5, 1004, 5),
	(5, 1001, 5),
	(7, 1009, 9),
	(6, 1010, 5),
	(8, 1012, 5),
	(8, 1008, 7),
	(9, 1007, 4),
	(9, 1012, 5),
	(10, 1011, 7),
	(10, 4001, 7),
	(11, 5001, 2),
	(11, 1012, 5),
	(12, 1010, 15);

INSERT INTO beschraenkung (BeschNr, BeschName) VALUES
   (9980, 'Fisch'),
   (9981, 'Krebstiere'),
	(9982, 'Weichtiere'),
	(9983, 'Lupine'),
	(9984, 'Gluten'),
	(9985, 'Soja'),
	(9986, 'Sellerie'),
	(9987, 'Senf'),
	(9988, 'Sesam'),
	(9989, 'Sulfide'),
	(9990, 'Eier'),
	(9991, 'Milch'),
	(9992, 'Schalenfrüchte'),
	(9993, 'Erdnüsse');

INSERT INTO kundenbeschraenkung (KdNr, BeschNr) VALUES
	(2001, 9980),
	(2001, 9981),
	(2004, 9988),
	(2007, 9993),
	(2006, 9993);