SET SEARCH_PATH TO STREAMING;

DELETE FROM ausstrahlung;
DELETE FROM bietet_an;
DELETE FROM episode;
DELETE FROM hat_hauptschauspieler;
DELETE FROM serie;
DELETE FROM vertrag;
DELETE FROM kunstler;
DELETE FROM kunde;
DELETE FROM Sender;
DELETE FROM streamingdienst;

INSERT INTO streamingdienst (name) VALUES ('Netflix');
INSERT INTO streamingdienst (name) VALUES ('Disney+');
INSERT INTO streamingdienst (name) VALUES ('Amazon Prime');
INSERT INTO streamingdienst (name) VALUES ('Paramount+');
INSERT INTO streamingdienst (name) VALUES ('Joyn');

INSERT INTO sender (name) VALUES ('ARD');
INSERT INTO sender (name) VALUES ('ZDF');
INSERT INTO sender (name) VALUES ('RTL');
INSERT INTO sender (name) VALUES ('PRO7');
INSERT INTO sender (name) VALUES ('SAT1');

INSERT INTO kunde (typ, email) VALUES ('company', 'pilsstubeherkules@darmstadt.de');
INSERT INTO kunde (typ, email) VALUES ('person', 'peter.feldmann@awo.de');
INSERT INTO kunde (typ, email) VALUES ('company', 'fbi@h-da.de');
INSERT INTO kunde (typ, email) VALUES ('person', 'mark.zuckerberg@facebook.com');

INSERT INTO kunstler(id, vorname, nachname) VALUES
(0319213, 'Vince', 'Gilligan'),
(0186505, 'Bryan', 'Cranston'),
(0666739, 'Aaron', 'Paul'),
(0348152, 'Anna', 'Gunn'),
(0532235, 'Seth', 'MacFarlane'),
(1597316, 'Adrianne', 'Palicki'),
(0425982, 'Penny Johnson', 'Jerald'),
(0443047, 'George', 'Kay'),
(1082477, 'Omar', 'Sy'),
(0756203, 'Ludivine', 'Sagnier'),
(2245673, 'Soufiane', 'Guerrab'),
(2713351, 'Jessica', 'Goldberg'),
(1157358, 'Michelle', 'Monaghan'),
(4563896, 'Emma', 'Greenwell');

INSERT INTO vertrag (name, email, monatspreis, vertragslaufzeit) VALUES ('Netflix', 'peter.feldmann@awo.de', 25, '2024-01-01');
INSERT INTO vertrag (name, email, monatspreis, vertragslaufzeit) VALUES ('Disney+', 'peter.feldmann@awo.de', 25, '2024-01-01');
INSERT INTO vertrag (name, email, monatspreis, vertragslaufzeit) VALUES ('Amazon Prime', 'peter.feldmann@awo.de', 25, '2024-01-01');
INSERT INTO vertrag (name, email, monatspreis, vertragslaufzeit) VALUES ('Netflix', 'fbi@h-da.de', 12, '2023-06-01');
INSERT INTO vertrag (name, email, monatspreis, vertragslaufzeit) VALUES ('Joyn', 'fbi@h-da.de', 12, '2023-06-01');
INSERT INTO vertrag (name, email, monatspreis, vertragslaufzeit) VALUES ('Netflix', 'mark.zuckerberg@facebook.com', 12, '2023-06-01');
INSERT INTO vertrag (name, email, monatspreis, vertragslaufzeit) VALUES ('Paramount+', 'mark.zuckerberg@facebook.com', 12, '2023-06-01');
INSERT INTO vertrag (name, email, monatspreis, vertragslaufzeit) VALUES ('Joyn', 'mark.zuckerberg@facebook.com', 12, '2023-06-01');

-- serie + dessen stoffentwickler (Serie hat nur einen Stoffentwickler)
INSERT INTO serie (serienname, id) VALUES ('Breaking Bad', 0319213); -- Vince Gilligan
INSERT INTO serie (serienname, id) VALUES ('The Orville', 0532235); -- Seth MacFarlane
INSERT INTO serie (serienname, id) VALUES ('Lupin', 0443047); -- George Kay
INSERT INTO serie (serienname, id) VALUES ('The Path', 2713351); -- Jessica Goldberg

-- serie + dessen hauptschauspieler (Serie hat Hauptschauspieler)
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('Breaking Bad', 0186505); -- Bryan Cranston
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('Breaking Bad', 0666739); -- Aaron Paul
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('Breaking Bad', 0348152); -- Anna Gunn
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('The Orville', 0532235); -- Seth MacFarlane
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('The Orville', 1597316); -- Adrianne Palicki
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('The Orville', 0425982); -- Penny Johnson Jerald
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('Lupin', 1082477); -- Omar Sy
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('Lupin', 0756203); -- Ludivine Sagnier
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('Lupin', 2245673); -- Soufiane Guerrab
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('The Path', 0666739); -- Aaron Paul
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('The Path', 1157358); -- Michelle Monaghan
INSERT INTO hat_hauptschauspieler (serienname, id) VALUES ('The Path', 4563896);-- Emma Greenwell

INSERT INTO episode(serienname,staffel,nummer,titel,imdbrating) VALUES
 ('Breaking Bad',5,1,'Live Free or Die',92)
,('Breaking Bad',5,2,'Madrigal',88)
,('Breaking Bad',5,3,'Hazard Pay',88)
,('Breaking Bad',5,4,'Fifty-One',88)
,('Breaking Bad',5,5,'Dead Freight',97)
,('Breaking Bad',5,6,'Buyout',90)
,('Breaking Bad',5,7,'Say My Name',95)
,('Breaking Bad',5,8,'Gliding Over All',96)
,('Breaking Bad',5,9,'Blood Money',94)
,('Breaking Bad',5,10,'Buried',92)
,('Breaking Bad',5,11,'Confessions',96)
,('Breaking Bad',5,12,'Rabid Dog',91)
,('Breaking Bad',5,13,'To hajiilee',98)
,('Breaking Bad',5,14,'Ozymandias',100)
,('Breaking Bad',5,15,'Granite State',97)
,('Breaking Bad',5,16,'Felina',99)
,('Breaking Bad',4,1,'Box Cutter',92)
,('Breaking Bad',4,2,'Thirty-Eight Snub',82)
,('Breaking Bad',4,3,'Open House',80)
,('Breaking Bad',4,4,'Bullet Points',86)
,('Breaking Bad',4,5,'Shotgun',86)
,('Breaking Bad',4,6,'Cornered',84)
,('Breaking Bad',4,7,'Problem Dog',88)
,('Breaking Bad',4,8,'Hermanos',92)
,('Breaking Bad',4,9,'Bug',88)
,('Breaking Bad',4,10,'Salud',96)
,('Breaking Bad',4,11,'Crawl Space',97)
,('Breaking Bad',4,12,'End Times',95)
,('Breaking Bad',4,13,'Face Off',99)
,('Breaking Bad',3,1,'No Más',85)
,('Breaking Bad',3,2,'Caballo sin Nombre',86)
,('Breaking Bad',3,3,'I.F.T.',84)
,('Breaking Bad',3,4,'Green Light',82)
,('Breaking Bad',3,5,'Más',85)
,('Breaking Bad',3,6,'Sunset',93)
,('Breaking Bad',3,7,'One Minute',96)
,('Breaking Bad',3,8,'I See You',87)
,('Breaking Bad',3,9,'Kafkaesque',84)
,('Breaking Bad',3,10,'Fly',78)
,('Breaking Bad',3,11,'Abiquiu',84)
,('Breaking Bad',3,12,'Half Measures',95)
,('Breaking Bad',3,13,'Full Measure',96)
,('Breaking Bad',2,1,'Seven Thirty-Seven',86)
,('Breaking Bad',2,2,'Grilled',93)
,('Breaking Bad',2,3,'Bit by a Dead Bee',83)
,('Breaking Bad',2,4,'Down',82)
,('Breaking Bad',2,5,'Breakage',83)
,('Breaking Bad',2,6,'Peekaboo',88)
,('Breaking Bad',2,7,'Negro y Azul',86)
,('Breaking Bad',2,8,'Better Call Saul',92)
,('Breaking Bad',2,9,'4 Days Out',91)
,('Breaking Bad',2,10,'Over',85)
,('Breaking Bad',2,11,'Mandala',89)
,('Breaking Bad',2,12,'Phoenix',93)
,('Breaking Bad',2,13,'ABQ',92)
,('Breaking Bad',1,1,'Der Einstieg',90)
,('Breaking Bad',1,2,'Die Katze ist im Sack',86)
,('Breaking Bad',1,3,'...And the Bags in the River',87)
,('Breaking Bad',1,4,'Cancer Man',82)
,('Breaking Bad',1,5,'Gray Matter',83)
,('Breaking Bad',1,6,'Crazy Handful of Nothin',93)
,('Breaking Bad',1,7,'A No-Rough-Stuff-Type Deal',88)
,('Lupin',1,1,'Chapter 1',78)
,('Lupin',1,2,'Chapter 2',77)
,('Lupin',1,3,'Chapter 3',75)
,('Lupin',1,4,'Chapter 4',76)
,('Lupin',1,5,'Chapter 5',77)
,('Lupin',2,1,'Chapter 6',71)
,('Lupin',2,2,'Chapter 7',72)
,('Lupin',2,3,'Chapter 8',74)
,('Lupin',2,4,'Chapter 9',77)
,('Lupin',2,5,'Chapter 10',81)
,('The Orville',1,1,'Old Wounds',74)
,('The Orville',1,2,'Command Performance',77)
,('The Orville',1,3,'About a Girl',77)
,('The Orville',1,4,'If the Stars Should Appear',82)
,('The Orville',1,5,'Pria',78)
,('The Orville',1,6,'Krill',79)
,('The Orville',1,7,'Majority Rule',82)
,('The Orville',1,8,'Into the Fold',73)
,('The Orville',1,9,'Cupids Dagger',78)
,('The Orville',1,10,'Firestorm',80)
,('The Orville',1,11,'New Dimensions',79)
,('The Orville',1,12,'Mad Idolatry',84)
,('The Orville',2,1,'Ja loja',71)
,('The Orville',2,2,'Primal Urges',66)
,('The Orville',2,3,'Home',81)
,('The Orville',2,4,'Nothing Left on Earth Excepting Fishes',82)
,('The Orville',2,5,'All the World Is Birthday Cake',73)
,('The Orville',2,6,'A Happy Refrain',81)
,('The Orville',2,7,'Deflectors',75)
,('The Orville',2,8,'Identity',91)
,('The Orville',2,9,'Identity, Part II',90)
,('The Orville',2,10,'Blood of Patriots',78)
,('The Orville',2,11,'Lasting Impressions',88)
,('The Orville',2,12,'Sanctuary',82)
,('The Orville',2,13,'Tomorrow, and Tomorrow, and Tomorrow',82)
,('The Orville',2,14,'The Road Not Taken',85)
,('The Orville',3,1,'Electric Sheep',74)
,('The Orville',3,2,'Shadow Realms',72)
,('The Orville',3,3,'Mortality Paradox',79)
,('The Orville',3,4,'Gently Falling Rain',83)
,('The Orville',3,5,'A Tale of Two Topas',79)
,('The Orville',3,6,'Twice in a Lifetime',88)
,('The Orville',3,7,'From Unknown Graves',85)
,('The Orville',3,8,'Midnight Blue',81)
,('The Orville',3,9,'Domino',92)
,('The Orville',3,10,'Future Unknown',81)
,('The Path',1,1,'What the Fire Throws',75)
,('The Path',1,2,'The Era of the Ladder',78)
,('The Path',1,3,'A Homecoming',78)
,('The Path',1,4,'The Future',76)
,('The Path',1,5,'The Hole',77)
,('The Path',1,6,'Breaking and Entering',78)
,('The Path',1,7,'Refugees',83)
,('The Path',1,8,'The Shore',80)
,('The Path',1,9,'A Room of Ones Own',85)
,('The Path',1,10,'The Miracle',81)
,('The Path',2,1,'Liminal Twilight',75)
,('The Path',2,2,'Dead Moon',74)
,('The Path',2,3,'The Father and the Son',73)
,('The Path',2,4,'The Red Wall',75)
,('The Path',2,5,'Why We Source',77)
,('The Path',2,6,'For Our Safety',74)
,('The Path',2,7,'Providence',71)
,('The Path',2,8,'Return',75)
,('The Path',2,9,'Oz',78)
,('The Path',2,10,'Restitution',75)
,('The Path',2,11,'Defiance',77)
,('The Path',2,12,'Spiritus Mundi',84)
,('The Path',2,13,'Mercy',72)
,('The Path',3,1,'The Beginning',73)
,('The Path',3,2,'A Beast, No More',76)
,('The Path',3,3,'Locusts',74)
,('The Path',3,4,'De Rerum Natura',79)
,('The Path',3,5,'Pageantry',78)
,('The Path',3,6,'Messiah',79)
,('The Path',3,7,'The Gardens at Giverny',78)
,('The Path',3,8,'The Door',77)
,('The Path',3,9,'The Veil',80)
,('The Path',3,10,'The Strongest Souls',77)
,('The Path',3,11,'Bad Faith',77)
,('The Path',3,12,'A New American Religion',84)
,('The Path',3,13,'Blood Moon',77);

INSERT INTO bietet_an (name, serienname, nummer, staffel) VALUES ('Netflix', 'Breaking Bad', 1, 1);
INSERT INTO bietet_an (name, serienname, nummer, staffel) VALUES ('Netflix', 'Breaking Bad', 2, 1);
INSERT INTO bietet_an (name, serienname, nummer, staffel) VALUES ('Netflix', 'Breaking Bad', 3, 1);

INSERT INTO bietet_an (name, serienname, nummer, staffel) VALUES ('Joyn', 'The Orville', 1, 1);
INSERT INTO bietet_an (name, serienname, nummer, staffel) VALUES ('Joyn', 'The Orville', 2, 1);
INSERT INTO bietet_an (name, serienname, nummer, staffel) VALUES ('Joyn', 'The Orville', 3, 1);

INSERT INTO bietet_an (name, serienname, nummer, staffel) VALUES ('Amazon Prime', 'Lupin', 1, 1);
INSERT INTO bietet_an (name, serienname, nummer, staffel) VALUES ('Amazon Prime', 'Lupin', 2, 1);
INSERT INTO bietet_an (name, serienname, nummer, staffel) VALUES ('Amazon Prime', 'Lupin', 3, 1);

INSERT INTO ausstrahlung (serienname, nummer, staffel, name, ausstrahlungsnummer, startzeit, endzeit) VALUES ('Lupin', 1, 1, 'SAT1', 1, '2023-05-01 15:30:00', '2023-05-01 16:30:00');
INSERT INTO ausstrahlung (serienname, nummer, staffel, name, ausstrahlungsnummer, startzeit, endzeit) VALUES ('The Orville', 1, 1, 'PRO7', 1, '2023-05-01 16:00:00', '2023-05-01 17:00:00');
INSERT INTO ausstrahlung (serienname, nummer, staffel, name, ausstrahlungsnummer, startzeit, endzeit) VALUES ('Lupin', 1, 2, 'SAT1', 2, '2023-05-01 16:30:00', '2023-05-01 17:30:00');
INSERT INTO ausstrahlung (serienname, nummer, staffel, name, ausstrahlungsnummer, startzeit, endzeit) VALUES ('The Orville', 1, 2, 'PRO7', 2, '2023-05-01 17:00:00', '2023-05-01 18:00:00');
INSERT INTO ausstrahlung (serienname, nummer, staffel, name, ausstrahlungsnummer, startzeit, endzeit) VALUES ('Lupin', 1, 2, 'SAT1', 3, '2023-05-01 17:30:00', '2023-05-01 18:30:00');
INSERT INTO ausstrahlung (serienname, nummer, staffel, name, ausstrahlungsnummer, startzeit, endzeit) VALUES ('The Orville', 1, 3, 'PRO7', 3, '2023-05-01 18:00:00', '2023-05-01 19:00:00');