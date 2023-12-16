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
	(103, 'Molkerei Henning', 'Molkereiwegkundekunde', '13','19217', 'Dechow', '038873-8976', 'info@molkerei-henning.de'),
	(104, 'Chat-GPT', 'Chatstrasse', '3-gpt', '12345', 'Gptburg', '00000-0000', 'chat@gpt.com');

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
	(6300, 'Kichererbsen', 'Dose', 1.0, 400, 103, 150, 21.2, 9),
	(1016, 'Lachsfilet', 'Stück', 5.0, 10, 104, 206, 0, 22),
	(1017, 'Avocado', 'Stück', 1.5, 15, 104, 160, 8.5, 2),
	(1018, 'Quinoa', 'Gramm', 0.3, 500, 104, 120, 21, 4),
	(1019, 'Rote Beete', 'Stück', 0.6, 25, 104, 43, 9.9, 1.6),
	(1020, 'Hähnchenbrust', 'Stück', 3.5, 8, 104, 165, 0, 31),
	(1021, 'Erdnüsse', 'Handvoll', 1.2, 100, 104, 567, 16, 25),
	(1022, 'Griechischer Joghurt', 'Becher', 1.0, 20, 104, 59, 3.6, 10),
	(1023, 'Blaubeeren', 'Tasse', 2.5, 30, 104, 85, 21, 1),
	(1024, 'Quark', 'Packung', 1.8, 15, 104, 61, 3.9, 11),
	(1025, 'Linsen', 'Tasse', 0.7, 200, 104, 230, 40, 18),
	(1026, 'Rindersteak', 'Stück', 8.0, 5, 104, 250, 0, 26),
	(1027, 'Basilikumöl', 'Flasche', 4.0, 8, 104, 900, 0, 0),
	(1028, 'Cherrytomaten', 'Pint', 3.0, 25, 104, 15, 3, 1),
	(1029, 'Balsamicoessig', 'Flasche', 2.0, 12, 104, 14, 3, 0),
	(1030, 'Erdbeeren', 'Schale', 2.2, 20, 104, 32, 7, 1),
	(1031, 'Feta-Käse', 'Päckchen', 2.5, 15, 104, 265, 2, 14),
	(1032, 'Maiskörner', 'Dose', 1.0, 50, 104, 96, 19, 3),
	(1033, 'Thunfisch', 'Dose', 2.2, 10, 104, 191, 0, 42),
	(1034, 'Olivenöl', 'Flasche', 3.0, 18, 104, 120, 0, 0),
	(1035, 'Hummus', 'Packung', 2.5, 15, 104, 166, 8, 8),
	(1036, 'Römersalat', 'Kopf', 1.5, 10, 104, 49, 9, 3),
	(1037, 'Linsennudeln', 'Packung', 2.0, 30, 104, 350, 64, 24),
	(1038, 'Paprika', 'Stück', 0.8, 20, 104, 31, 6, 1),
	(1039, 'Cashewkerne', 'Handvoll', 1.2, 15, 104, 553, 30, 18),
	(1040, 'Hummus', 'Becher', 2.5, 15, 104, 166, 8, 8),
	(1041, 'Jasminreis', 'Tasse', 0.5, 100, 104, 206, 45, 4),
	(1042, 'Garnelen', '100g', 4.0, 5, 104, 85, 0, 18),
	(1043, 'Pesto', 'Glas', 3.0, 10, 104, 450, 3, 19),
	(1044, 'Spargel', 'Bündel', 2.0, 8, 104, 20, 5, 2),
	(1045, 'Risoni-Nudeln', 'Packung', 2.5, 25, 104, 180, 38, 6);

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

INSERT INTO zutatbeschraenkung (ZutatNr, BeschNr) VALUES
	(1006, 9984),   -- Kartoffel (Gluten)
	(3001, 9991),   -- Vollmilch, 3.5% (Milch)
	(3002, 9991),   -- Mozzarella (Milch)
	(3003, 9991),   -- Butter (Milch)
	(4001, 9990),   -- Ei (Eier)
	(5001, 9980),   -- Wiener Würstchen (Fisch)
	(9001, 9991),   -- Tofu-Würstchen (Milch)
	(6300, 9991),   -- Kichererbsen (Milch)
	(1016, 9980),   -- Lachsfilet (Fisch)
	(1018, 9984),   -- Quinoa (Gluten)
	(1020, 9990),   -- Hähnchenbrust (Eier)
	(1021, 9993),   -- Erdnüsse (Erdnüsse)
	(1022, 9991),   -- Griechischer Joghurt (Milch)
	(1024, 9991),   -- Quark (Milch)
	(1025, 9992),   -- Linsen (Schalenfrüchte)
	(1026, 9980),   -- Rindersteak (Fisch)
	(1029, 9991),   -- Balsamicoessig (Milch)
	(1031, 9991),   -- Feta-Käse (Milch)
	(1032, 9992),   -- Maiskörner (Schalenfrüchte)
	(1033, 9980),   -- Thunfisch (Fisch)
	(1035, 9991),   -- Hummus (Milch)
	(1037, 9992),   -- Linsennudeln (Schalenfrüchte)
	(1039, 9992),   -- Cashewkerne (Schalenfrüchte)
	(1040, 9991),   -- Hummus (Milch)
	(1042, 9981),   -- Garnelen (Krebstiere)
	(1043, 9991),   -- Pesto (Milch)
	(1044, 9980),   -- Spargel (Fisch)
	(1045, 9984);   -- Risoni-Nudeln (Gluten)

INSERT INTO kategorie (KatNr, KatName) VALUES
	(301, 'Vegetarisch'),
	(302, 'Vegan'),
	(303, 'Frutarisch'),
	(310, 'Low Carb'),
	(311, 'High Protein');

-- Im Folgenden werden Beispielrezepte erstellt

-- Rezept 1: Gemüsepfanne mit Hähnchen
INSERT INTO rezept (RezeptNr, RezeptName) VALUES (200, 'Gemüsepfanne mit Hähnchen');
INSERT INTO zutatinrezept (Menge, RezeptNr, ZutatNr) VALUES
	(2, 200, 1001),   -- Zucchini
	(1, 200, 1002),   -- Zwiebel
	(1, 200, 1003),   -- Tomate
	(1, 200, 1004),   -- Schalotte
	(3, 200, 1005),   -- Karotte
	(2, 200, 1007),   -- Rucola
	(1, 200, 1008),   -- Lauch
	(2, 200, 1009),   -- Knoblauch
	(1, 200, 1010),   -- Basilikum
	(1, 200, 1011),   -- Süßkartoffel
	(1, 200, 1012),   -- Schnittlauch
	(1, 200, 1020);   -- Hähnchenbrust
INSERT INTO kategoriefuerrezept (KatNr, RezeptNr) VALUES
	(301, 200), -- Vegetarisch
	(311, 200); -- High Protein

-- Rezept 2: Salat mit Lachs und Avocado
INSERT INTO rezept (RezeptNr, RezeptName) VALUES (201, 'Salat mit Lachs und Avocado');
INSERT INTO zutatinrezept (Menge, RezeptNr, ZutatNr) VALUES
	(1, 201, 1007),   -- Rucola
	(1, 201, 1022),   -- Griechischer Joghurt
	(0.5, 201, 1023), -- Blaubeeren
	(0.5, 201, 1030), -- Erdbeeren
	(1, 201, 1016),   -- Lachsfilet
	(1, 201, 1017),   -- Avocado
	(1, 201, 1029),   -- Balsamicoessig
	(2, 201, 1034),   -- Olivenöl
	(1, 201, 1035);   -- Hummus
INSERT INTO kategoriefuerrezept (KatNr, RezeptNr) VALUES
	(302, 201), -- Vegan
	(311, 201); -- High Protein

-- Rezept 3: Quinoa-Salat mit Gemüse
INSERT INTO rezept (RezeptNr, RezeptName) VALUES (202, 'Quinoa-Salat mit Gemüse');
INSERT INTO zutatinrezept (Menge, RezeptNr, ZutatNr) VALUES
	(1, 202, 1018),   -- Quinoa
	(1, 202, 1007),   -- Rucola
	(1, 202, 1008),   -- Lauch
	(1, 202, 1003),   -- Tomate
	(0.5, 202, 1024), -- Quark
	(1, 202, 1029),   -- Balsamicoessig
	(2, 202, 1034),   -- Olivenöl
	(0.5, 202, 1031), -- Feta-Käse
	(1, 202, 1023);   -- Blaubeeren
INSERT INTO kategoriefuerrezept (KatNr, RezeptNr) VALUES
	(310, 202), -- Low Carb
	(301, 202); -- Vegetarisch

-- Rezept 4: Hähnchen-Wrap mit Avocado
INSERT INTO rezept (RezeptNr, RezeptName) VALUES (203, 'Hähnchen-Wrap mit Avocado');
INSERT INTO zutatinrezept (Menge, RezeptNr, ZutatNr) VALUES
	(1, 203, 1020),   -- Hähnchenbrust
	(1, 203, 1021),   -- Erdnüsse
	(1, 203, 1002),   -- Zwiebel
	(1, 203, 1009),   -- Knoblauch
	(1, 203, 1011),   -- Süßkartoffel
	(1, 203, 1017),   -- Avocado
	(1, 203, 1028),   -- Cherrytomaten
	(1, 203, 1034);   -- Olivenöl
INSERT INTO kategoriefuerrezept (KatNr, RezeptNr) VALUES
	(301, 203), -- Vegetarisch
	(311, 203); -- High Protein

-- Rezept 5: Tofu-Bowl mit Gemüse
INSERT INTO rezept (RezeptNr, RezeptName) VALUES (204, 'Tofu-Bowl mit Gemüse');
INSERT INTO zutatinrezept (Menge, RezeptNr, ZutatNr) VALUES
	(1, 204, 9001),   -- Tofu-Würstchen
	(1, 204, 1001),   -- Zucchini
	(1, 204, 1004),   -- Schalotte
	(1, 204, 1006),   -- Kartoffel
	(1, 204, 1009),   -- Knoblauch
	(1, 204, 1010),   -- Basilikum
	(1, 204, 1025),   -- Linsen
	(1, 204, 1027),   -- Basilikumöl
	(1, 204, 1032);   -- Maiskörner
INSERT INTO kategoriefuerrezept (KatNr, RezeptNr) VALUES
	(301, 204), -- Vegetarisch
	(302, 204); -- Vegan

-- Rezept 6: Lachs-Risotto
INSERT INTO rezept (RezeptNr, RezeptName) VALUES (205, 'Lachs-Risotto');
INSERT INTO zutatinrezept (Menge, RezeptNr, ZutatNr) VALUES
	(1, 205, 1016),   -- Lachsfilet
	(1, 205, 1018),   -- Quinoa
	(1, 205, 1002),   -- Zwiebel
	(1, 205, 1004),   -- Schalotte
	(1, 205, 1009),   -- Knoblauch
	(1, 205, 1027),   -- Basilikumöl
	(1, 205, 1033);   -- Thunfisch
INSERT INTO kategoriefuerrezept (KatNr, RezeptNr) VALUES
	(302, 205), -- Vegan
	(311, 205); -- High Protein

-- Rezept 7: Römersalat mit Hähnchen
INSERT INTO rezept (RezeptNr, RezeptName) VALUES (206, 'Römersalat mit Hähnchen');
INSERT INTO zutatinrezept (Menge, RezeptNr, ZutatNr) VALUES
	(1, 206, 1036),   -- Römersalat
	(1, 206, 1020),   -- Hähnchenbrust
	(1, 206, 1038),   -- Paprika
	(1, 206, 1039),   -- Cashewkerne
	(1, 206, 1040),   -- Hummus
	(1, 206, 1032);   -- Maiskörner
INSERT INTO kategoriefuerrezept (KatNr, RezeptNr) VALUES
	(301, 206), -- Vegetarisch
	(310, 206); -- Low Carb

-- Rezept 8: Linsennudel-Salat mit Avocado
INSERT INTO rezept (RezeptNr, RezeptName) VALUES (207, 'Linsennudel-Salat mit Avocado');
INSERT INTO zutatinrezept (Menge, RezeptNr, ZutatNr) VALUES
	(1, 207, 1037),   -- Linsennudeln
	(1, 207, 1017),   -- Avocado
	(1, 207, 1023),   -- Blaubeeren
	(1, 207, 1038),   -- Paprika
	(1, 207, 1039),   -- Cashewkerne
	(1, 207, 1041);   -- Jasminreis
INSERT INTO kategoriefuerrezept (KatNr, RezeptNr) VALUES
	(301, 207), -- Vegetarisch
	(302, 207); -- Vegan