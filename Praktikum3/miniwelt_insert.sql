SET SEARCH_PATH TO STREAMING;
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
 ('Breaking Bad',5,1,'Live Free or Die',9.2)
,('Breaking Bad',5,2,'Madrigal',8.8)
,('Breaking Bad',5,3,'Hazard Pay',8.8)
,('Breaking Bad',5,4,'Fifty-One',8.8)
,('Breaking Bad',5,5,'Dead Freight',9.7)
,('Breaking Bad',5,6,'Buyout',9.0)
,('Breaking Bad',5,7,'Say My Name',9.5)
,('Breaking Bad',5,8,'Gliding Over All',9.6)
,('Breaking Bad',5,9,'Blood Money',9.4)
,('Breaking Bad',5,10,'Buried',9.2)
,('Breaking Bad',5,11,'Confessions',9.6)
,('Breaking Bad',5,12,'Rabid Dog',9.1)
,('Breaking Bad',5,13,'To hajiilee',9.8)
,('Breaking Bad',5,14,'Ozymandias',10.0)
,('Breaking Bad',5,15,'Granite State',9.7)
,('Breaking Bad',5,16,'Felina',9.9)
,('Breaking Bad',4,1,'Box Cutter',9.2)
,('Breaking Bad',4,2,'Thirty-Eight Snub',8.2)
,('Breaking Bad',4,3,'Open House',8.0)
,('Breaking Bad',4,4,'Bullet Points',8.6)
,('Breaking Bad',4,5,'Shotgun',8.6)
,('Breaking Bad',4,6,'Cornered',8.4)
,('Breaking Bad',4,7,'Problem Dog',8.8)
,('Breaking Bad',4,8,'Hermanos',9.2)
,('Breaking Bad',4,9,'Bug',8.8)
,('Breaking Bad',4,10,'Salud',9.6)
,('Breaking Bad',4,11,'Crawl Space',9.7)
,('Breaking Bad',4,12,'End Times',9.5)
,('Breaking Bad',4,13,'Face Off',9.9)
,('Breaking Bad',3,1,'No Más',8.5)
,('Breaking Bad',3,2,'Caballo sin Nombre',8.6)
,('Breaking Bad',3,3,'I.F.T.',8.4)
,('Breaking Bad',3,4,'Green Light',8.2)
,('Breaking Bad',3,5,'Más',8.5)
,('Breaking Bad',3,6,'Sunset',9.3)
,('Breaking Bad',3,7,'One Minute',9.6)
,('Breaking Bad',3,8,'I See You',8.7)
,('Breaking Bad',3,9,'Kafkaesque',8.4)
,('Breaking Bad',3,10,'Fly',7.8)
,('Breaking Bad',3,11,'Abiquiu',8.4)
,('Breaking Bad',3,12,'Half Measures',9.5)
,('Breaking Bad',3,13,'Full Measure',9.6)
,('Breaking Bad',2,1,'Seven Thirty-Seven',8.6)
,('Breaking Bad',2,2,'Grilled',9.3)
,('Breaking Bad',2,3,'Bit by a Dead Bee',8.3)
,('Breaking Bad',2,4,'Down',8.2)
,('Breaking Bad',2,5,'Breakage',8.3)
,('Breaking Bad',2,6,'Peekaboo',8.8)
,('Breaking Bad',2,7,'Negro y Azul',8.6)
,('Breaking Bad',2,8,'Better Call Saul',9.2)
,('Breaking Bad',2,9,'4 Days Out',9.1)
,('Breaking Bad',2,10,'Over',8.5)
,('Breaking Bad',2,11,'Mandala',8.9)
,('Breaking Bad',2,12,'Phoenix',9.3)
,('Breaking Bad',2,13,'ABQ',9.2)
,('Breaking Bad',1,1,'Der Einstieg',9.0)
,('Breaking Bad',1,2,'Die Katze ist im Sack',8.6)
,('Breaking Bad',1,3,'...And the Bags in the River',8.7)
,('Breaking Bad',1,4,'Cancer Man',8.2)
,('Breaking Bad',1,5,'Gray Matter',8.3)
,('Breaking Bad',1,6,'Crazy Handful of Nothin',9.3)
,('Breaking Bad',1,7,'A No-Rough-Stuff-Type Deal',8.8)
,('Lupin',1,1,'Chapter 1',7.8)
,('Lupin',1,2,'Chapter 2',7.7)
,('Lupin',1,3,'Chapter 3',7.5)
,('Lupin',1,4,'Chapter 4',7.6)
,('Lupin',1,5,'Chapter 5',7.7)
,('Lupin',2,1,'Chapter 6',7.1)
,('Lupin',2,2,'Chapter 7',7.2)
,('Lupin',2,3,'Chapter 8',7.4)
,('Lupin',2,4,'Chapter 9',7.7)
,('Lupin',2,5,'Chapter 10',8.1)
,('The Orville',1,1,'Old Wounds',7.4)
,('The Orville',1,2,'Command Performance',7.7)
,('The Orville',1,3,'About a Girl',7.7)
,('The Orville',1,4,'If the Stars Should Appear',8.2)
,('The Orville',1,5,'Pria',7.8)
,('The Orville',1,6,'Krill',7.9)
,('The Orville',1,7,'Majority Rule',8.2)
,('The Orville',1,8,'Into the Fold',7.3)
,('The Orville',1,9,'Cupids Dagger',7.8)
,('The Orville',1,10,'Firestorm',8.0)
,('The Orville',1,11,'New Dimensions',7.9)
,('The Orville',1,12,'Mad Idolatry',8.4)
,('The Orville',2,1,'Ja loja',7.1)
,('The Orville',2,2,'Primal Urges',6.6)
,('The Orville',2,3,'Home',8.1)
,('The Orville',2,4,'Nothing Left on Earth Excepting Fishes',8.2)
,('The Orville',2,5,'All the World Is Birthday Cake',7.3)
,('The Orville',2,6,'A Happy Refrain',8.1)
,('The Orville',2,7,'Deflectors',7.5)
,('The Orville',2,8,'Identity',9.1)
,('The Orville',2,9,'Identity, Part II',9.0)
,('The Orville',2,10,'Blood of Patriots',7.8)
,('The Orville',2,11,'Lasting Impressions',8.8)
,('The Orville',2,12,'Sanctuary',8.2)
,('The Orville',2,13,'Tomorrow, and Tomorrow, and Tomorrow',8.2)
,('The Orville',2,14,'The Road Not Taken',8.5)
,('The Orville',3,1,'Electric Sheep',7.4)
,('The Orville',3,2,'Shadow Realms',7.2)
,('The Orville',3,3,'Mortality Paradox',7.9)
,('The Orville',3,4,'Gently Falling Rain',8.3)
,('The Orville',3,5,'A Tale of Two Topas',7.9)
,('The Orville',3,6,'Twice in a Lifetime',8.8)
,('The Orville',3,7,'From Unknown Graves',8.5)
,('The Orville',3,8,'Midnight Blue',8.1)
,('The Orville',3,9,'Domino',9.2)
,('The Orville',3,10,'Future Unknown',8.1)
,('The Path',1,1,'What the Fire Throws',7.5)
,('The Path',1,2,'The Era of the Ladder',7.8)
,('The Path',1,3,'A Homecoming',7.8)
,('The Path',1,4,'The Future',7.6)
,('The Path',1,5,'The Hole',7.7)
,('The Path',1,6,'Breaking and Entering',7.8)
,('The Path',1,7,'Refugees',8.3)
,('The Path',1,8,'The Shore',8.0)
,('The Path',1,9,'A Room of Ones Own',8.5)
,('The Path',1,10,'The Miracle',8.1)
,('The Path',2,1,'Liminal Twilight',7.5)
,('The Path',2,2,'Dead Moon',7.4)
,('The Path',2,3,'The Father and the Son',7.3)
,('The Path',2,4,'The Red Wall',7.5)
,('The Path',2,5,'Why We Source',7.7)
,('The Path',2,6,'For Our Safety',7.4)
,('The Path',2,7,'Providence',7.1)
,('The Path',2,8,'Return',7.5)
,('The Path',2,9,'Oz',7.8)
,('The Path',2,10,'Restitution',7.5)
,('The Path',2,11,'Defiance',7.7)
,('The Path',2,12,'Spiritus Mundi',8.4)
,('The Path',2,13,'Mercy',7.2)
,('The Path',3,1,'The Beginning',7.3)
,('The Path',3,2,'A Beast, No More',7.6)
,('The Path',3,3,'Locusts',7.4)
,('The Path',3,4,'De Rerum Natura',7.9)
,('The Path',3,5,'Pageantry',7.8)
,('The Path',3,6,'Messiah',7.9)
,('The Path',3,7,'The Gardens at Giverny',7.8)
,('The Path',3,8,'The Door',7.7)
,('The Path',3,9,'The Veil',8.0)
,('The Path',3,10,'The Strongest Souls',7.7)
,('The Path',3,11,'Bad Faith',7.7)
,('The Path',3,12,'A New American Religion',8.4)
,('The Path',3,13,'Blood Moon',7.7);

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