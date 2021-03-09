/******************************************************************************
 * Copyright (c) 2005 Actuate Corporation.
 * All rights reserved. This file and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http:/www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *  Actuate Corporation  - initial implementation
 *
 * Classic Models Inc. sample database developed as part of the
 * Eclipse BIRT Project. For more information, see http:/www.eclipse.org/birt
 *
 *******************************************************************************/

/* Loads the Classic Models tables using the MySQL LOAD command */

/* Preparing the load files for importing. Input file requirements:
     - Column order in the file must be the same as the columns in the table
     - Columns are Comma delimited
     - Text is quoted (")
     - NULL columns must be ,NULL,  ( ,, is not acceptable)
     - Dates must be in YYYY-MM-DDD format

   Input files expected in the datafiles direcory, parallel to this script.
*/


/* First make sure all the tables are empty */

DELETE FROM Customers;
DELETE FROM CustomerLogin;
DELETE FROM SecurityQuestions;
DELETE FROM Employees;
DELETE FROM Offices;
DELETE FROM OrderDetails;
DELETE FROM Orders;
DELETE FROM Payments;
DELETE FROM Products;
DELETE FROM Categories;
DELETE FROM Comments;


/* Load records into the tables. There should be no warnings.*/

INSERT into Customers VALUES (103,'Atelier Graphique','ateliergraphique.png','Schmitt','Carine ','40.32.2555','54, rue Royale',NULL,'Nantes',NULL,'44000','France',1370,21000);
INSERT into Customers VALUES (112,'Goat Gold Store','goatgoldstore.png','King','Jerry','7025551838','8489 Strong St.',NULL,'Las Vegas','NV','83030','USA',1166,71800);
INSERT into Customers VALUES (114,'Australian Collectors, Co.','australiancollectors.png','Ferguson','Peter','03 9520 4555','636 St Kilda Road','Level 3','Melbourne','Victoria','3004','Australia',1611,117300);
INSERT into Customers VALUES (119,'La Rochelle Gold','larochellegold.png','Labrune','Janine ','40.67.8555','67, rue des Cinquante Otages',NULL,'Nantes',NULL,'44000','France',1370,118200);
INSERT into Customers VALUES (121,'Baane Precious Imports','baanepreciousimports.png','Bergulfsen','Jonas ','07-98 9555','Erling Skakkes gate 78',NULL,'Stavern',NULL,'4110','Norway',1504,81700);
INSERT into Customers VALUES (124,'Precious Gold Distributors Ltd.','preciousgolddistributorsltd.png','Nelson','Susan','4155551450','5677 Strong St.',NULL,'San Rafael','CA','97562','USA',1165,210500);
INSERT into Customers VALUES (125,'Havel & Zbyszek Co','havelzbyszekco.png','Piestrzeniewicz','Zbyszek ','(26) 642-7555','ul. Filtrowa 68',NULL,'Warszawa',NULL,'01-012','Poland',NULL,0);
INSERT into Customers VALUES (128,'Blauer See Metals, Co.','blauerseemetals.png','Keitel','Roland','+49 69 66 90 2555','Lyonerstr. 34',NULL,'Frankfurt',NULL,'60528','Germany',1504,59700);
INSERT into Customers VALUES (129,'Precious Metals Co.','preciousmetalsco.png','Murphy','Julie','6505555787','5557 North Pendale Street',NULL,'San Francisco','CA','94217','USA',1165,64600);
INSERT into Customers VALUES (131,'Land of Coins Inc.','landofcoinsinc.png','Lee','Kwai','2125557818','897 Long Airport Avenue',NULL,'NYC','NY','10022','USA',1323,114900);
INSERT into Customers VALUES (141,'Euro+ Shopping Channel','euroshoppingchannel.png','Freyre','Diego ','(91) 555 94 44','C/ Moralzarzal, 86',NULL,'Madrid',NULL,'28034','Spain',1370,227600);
INSERT into Customers VALUES (144,'Volvo Model Replicas, Co','volvomodelreplicas.png','Berglund','Christina ','0921-12 3555','Berguvsvegen  8',NULL,'Lulee',NULL,'S-958 22','Sweden',1504,53100);
INSERT into Customers VALUES (145,'Danish Wholesale Imports','danishwholesaleimports.png','Petersen','Jytte ','31 12 3555','Vinbeltet 34',NULL,'Kobenhavn',NULL,'1734','Denmark',1401,83400);
INSERT into Customers VALUES (146,'Saveley & Henriot, Co.','saveleyhenriot.png','Saveley','Mary ','78.32.5555','2, rue du Commerce',NULL,'Lyon',NULL,'69004','France',1337,123900);
INSERT into Customers VALUES (148,'Dragon Coinage, Ltd.','dragoncoinage.png','Natividad','Eric','+65 221 7555','Bronz Sok.','Bronz Apt. 3/6 Tesvikiye','Singapore',NULL,'79903','Singapore',1621,103800);
INSERT into Customers VALUES (151,'Muscle Coins Inc','musclecoinsinc.png','Young','Jeff','2125557413','4092 Furth Circle','Suite 400','NYC','NY','10022','USA',1286,138500);
INSERT into Customers VALUES (157,'Premium Classics Inc.','premiumclassicsinc.png','Leong','Kelvin','2155551555','7586 Pompton St.',NULL,'Allentown','PA','70267','USA',1216,100600);
INSERT into Customers VALUES (161,'Technics Stores Inc.','technicsstoresinc.png','HashiCoin','Juri','6505556809','9408 Furth Circle',NULL,'Burlingame','CA','94217','USA',1165,84600);
INSERT into Customers VALUES (166,'Handji Gold & Co','handjigoldco.png','Victorino','Wendy','+65 224 1555','106 Linden Road Sandown','2nd Floor','Singapore',NULL,'69045','Singapore',1612,97900);
INSERT into Customers VALUES (167,'Herkku Gold','herkkugold.png','Oeztan','Veysel','+47 2267 3215','Brehmen St. 121','PR 334 Sentrum','Bergen',NULL,'N 5804','Norway  ',1504,96800);
INSERT into Customers VALUES (168,'American Bank Inc','americanbankinc.png','Franco','Keith','2035557845','149 Spinnaker Dr.','Suite 101','New Haven','CT','97823','USA',1286,0);
INSERT into Customers VALUES (169,'Porto Imports Co.','portoimportsco.png','de Castro','Isabel ','(1) 356-5555','Estrada da saede n. 58',NULL,'Lisboa',NULL,'1756','Portugal',NULL,0);
INSERT into Customers VALUES (171,'Daedalus Designs Imports','daedalusdesignsimports.png','Rance','Martine ','20.16.1555','184, chaussee de Tournai',NULL,'Lille',NULL,'59000','France',1370,82900);
INSERT into Customers VALUES (172,'La Corne D\'abondance, Co.','lacornedabondance.png','Bertrand','Marie','(1) 42.34.2555','265, boulevard Charonne',NULL,'Paris',NULL,'75012','France',1337,84300);
INSERT into Customers VALUES (173,'Cambridge Collectables Co.','cambridgecollectablesco.png','Tseng','Jerry','6175555555','4658 Baden Av.',NULL,'Cambridge','MA','51247','USA',1188,43400);
INSERT into Customers VALUES (175,'Gold Depot Inc.','golddepotinc.png','King','Julie','2035552570','25593 South Bay Ln.',NULL,'Bridgewater','CT','97562','USA',1323,84300);
INSERT into Customers VALUES (177,'Osaka Coinage Co.','osakacoinageco.png','Kentary','Mory','+81 06 6342 5555','1-6-20 Dojima',NULL,'Kita-ku','Osaka',' 530-0003','Japan',1621,81200);
INSERT into Customers VALUES (181,'Vitachrome Inc.','vitachromeinc.png','Frick','Michael','2125551500','2678 Kingston Rd.','Suite 101','NYC','NY','10022','USA',1286,76400);
INSERT into Customers VALUES (186,'Coins of Finland, Co.','coinsoffinland.png','Karttunen','Matti','90-224 8555','Keskuskatu 45',NULL,'Helsinki',NULL,'21240','Finland',1501,96500);
INSERT into Customers VALUES (187,'AV Stores, Co.','avstores.png','Ashworth','Rachel','(171) 555-1555','Fauntleroy Circus',NULL,'Manchester',NULL,'EC2 5NT','UK',1501,136800);
INSERT into Customers VALUES (189,'Clover Collections, Co.','clovercollections.png','Cassidy','Dean','+353 1862 1555','25 Maiden Lane','Floor No. 4','Dublin',NULL,'2','Ireland',1504,69400);
INSERT into Customers VALUES (198,'Metals-Coin Classics Inc.','metalscoinclassicsinc.png','Taylor','Leslie','6175558428','16780 Pompton St.',NULL,'Brickhaven','MA','58339','USA',1216,23000);
INSERT into Customers VALUES (201,'UK Collectables, Ltd.','ukcollectables.png','Devon','Elizabeth','(171) 555-2282','12, Berkeley Gardens Blvd',NULL,'Liverpool',NULL,'WX1 6LT','UK',1501,92700);
INSERT into Customers VALUES (202,'Canadian Gold Exchange Network','canadiangoldexchangenetwork.png','Tamuri','Yoshi ','(604) 555-3392','1900 Oak St.',NULL,'Vancouver','BC','V3F 2K1','Canada',1323,90300);
INSERT into Customers VALUES (204,'Online Precious Collectables','onlinepreciouscollectables.png','Barajas','Miguel','6175557555','7635 Spinnaker Dr.',NULL,'Brickhaven','MA','58339','USA',1188,68700);
INSERT into Customers VALUES (205,'Coins4GrownUps.com','coins4grownupscom.png','Young','Julie','6265557265','78934 Hillside Dr.',NULL,'Pasadena','CA','90003','USA',1166,90700);
INSERT into Customers VALUES (206,'Asian Shopping Network, Co','asianshoppingnetwork.png','Walker','Brydey','+612 9411 1555','Suntec Tower Three','8 Temasek','Singapore',NULL,'38988','Singapore',NULL,0);
INSERT into Customers VALUES (209,'Precious Caravy','preciouscaravy.png','Citeaux','Frederique ','88.60.1555','24, place Kleber',NULL,'Strasbourg',NULL,'67000','France',1370,53800);
INSERT into Customers VALUES (211,'King Kong Collectables, Co.','kingkongcollectables.png','Gao','Mike','+852 2251 1555','Bank of China Tower','1 Garden Road','Central Hong Kong',NULL,NULL,'Hong Kong',1621,58600);
INSERT into Customers VALUES (216,'Enaco Distributors','enacodistributors.png','Saavedra','Eduardo ','(93) 203 4555','Rambla de Cataluea, 23',NULL,'Barcelona',NULL,'8022','Spain',1702,60300);
INSERT into Customers VALUES (219,'Boards & Coins Co.','boardscoinsco.png','Young','Mary','3105552373','4097 Douglas Av.',NULL,'Glendale','CA','92561','USA',1166,11000);
INSERT into Customers VALUES (223,'Naterlich Metals','natrlichmetals.png','Kloss','Horst ','0372-555188','Taucherstraee 10',NULL,'Cunewalde',NULL,'1307','Germany',NULL,0);
INSERT into Customers VALUES (227,'Heintze Collectables','heintzecollectables.png','Ibsen','Palle','86 21 3555','Smagsloget 45',NULL,'erhus',NULL,'8200','Denmark',1401,120800);
INSERT into Customers VALUES (233,'Quebec Home Shopping Network','qubechomeshoppingnetwork.png','Fresniere','Jean ','(514) 555-8054','43 rue St. Laurent',NULL,'Montreal','Quebec','H1J 1C3','Canada',1286,48700);
INSERT into Customers VALUES (237,'ANG Resellers','angresellers.png','Camino','Alejandra ','(91) 745 6555','Gran Vea, 1',NULL,'Madrid',NULL,'28001','Spain',NULL,0);
INSERT into Customers VALUES (239,'Collectable Precious Designs Co.','collectablepreciousdesignsco.png','Thompson','Valarie','7605558146','361 Furth Circle',NULL,'San Diego','CA','91217','USA',1166,105000);
INSERT into Customers VALUES (240,'Goldbymail.co.uk','goldbymailcouk.png','Bennett','Helen ','(198) 555-8888','Garden House','Crowther Way 23','Cowes','Isle of Wight','PO31 7PJ','UK',1501,93900);
INSERT into Customers VALUES (242,'Alpha Cognac','alphacognac.png','Roulet','Annette ','61.77.6555','1 rue Alsace-Lorraine',NULL,'Toulouse',NULL,'31000','France',1370,61100);
INSERT into Customers VALUES (247,'Messner Shopping Network','messnershoppingnetwork.png','Messner','Renate ','069-0555984','Magazinweg 7',NULL,'Frankfurt',NULL,'60528','Germany',NULL,0);
INSERT into Customers VALUES (249,'Amica Coins & Co.','amicacoinsco.png','Accorti','Paolo ','011-4988555','Via Monte Bianco 34',NULL,'Torino',NULL,'10100','Italy',1401,113000);

INSERT into CustomerLogin VALUES ('bob@ateliergraphique.com',103,'MTIzNDU2',1,'blue');
INSERT into CustomerLogin VALUES ('jerry@goatgoldstore.net',112,'cGFzc3dvcmQ=',3,'dog');
INSERT into CustomerLogin VALUES ('bill@australiancollectors.net',114,'bG92ZQ==',4,'coins');
INSERT into CustomerLogin VALUES ('mark@larochellegold.net',119,'MTIzNDU2Nzg=',2,'Ohio');
INSERT into CustomerLogin VALUES ('jill@baanepreciousimports.net',121,'cHJpbmNlc3M=',3,'cat');
INSERT into CustomerLogin VALUES ('susan@preciousgolddistributorsltd.com',124,'c3Vuc2hpbmU=',2,'California');
INSERT into CustomerLogin VALUES ('sky@havelzbyszekco.com',125,'c2luZ2xl',2,'California');
INSERT into CustomerLogin VALUES ('kate@blauerseemetals.net',128,'aWxvdmV5b3U=',2,'Florida');
INSERT into CustomerLogin VALUES ('julie@preciousmetalsco.com',129,'c3VtbWVy',2,'Texas');
INSERT into CustomerLogin VALUES ('james@landofcoinsinc.net',131,'aG9wZQ==',2,'NY');
INSERT into CustomerLogin VALUES ('matt@euroshoppingchannel.net',141,'bG9va2luZw==',1,'light blue');
INSERT into CustomerLogin VALUES ('jane@volvomodelreplicas.net',144,'bW90aGVy',2,'Texas');
INSERT into CustomerLogin VALUES ('sally@danishwholesaleimports.com',145,'Zm9vdGJhbGw=',2,'NY');
INSERT into CustomerLogin VALUES ('rob@saveleyhenriot.net',146',aGFwcHk=',2,'Florida');
INSERT into CustomerLogin VALUES ('steve@dragoncoinage.com,148','cXdlcnR5',3,'cat');
INSERT into CustomerLogin VALUES ('jeff@musclecoinsinc.net',151,'bGV0bWVpbg==',4,'asdf');
INSERT into CustomerLogin VALUES ('kelvin@premiumclassicsinc.com',157,'dHJ1c3RubzE=',4,'123456');
INSERT into CustomerLogin VALUES ('sam@technicsstoresinc.com',161,'YWJjMTIz',2,'New York');
INSERT into CustomerLogin VALUES ('wendy@handjigoldco.com',166,'aGVsbG8=',1,'sky blue');
INSERT into CustomerLogin VALUES ('vey@herkkugold.net',167,'ZHJhZ29u',1,'blue');
INSERT into CustomerLogin VALUES ('keith@americanbankinc.com',168,'bW9ua2V5',1,'sky blue');
INSERT into CustomerLogin VALUES ('alex@portoimportsco.net',169,'Y29tcHV0ZXI=',2,'Colorado');
INSERT into CustomerLogin VALUES ('martine@daedalusdesignsimports.com',171,'YXNkZg==',4,'123456');
INSERT into CustomerLogin VALUES ('bertrand@lacornedabondance.com',172,'c2hhZG93',3,'cat');
INSERT into CustomerLogin VALUES ('jerry@cambridgecollectablesco.com',173,'aW50ZXJuZXQ=',4,'123456');
INSERT into CustomerLogin VALUES ('julie@golddepotinc.com',175,'d2hhdGV2ZXI=',4,'123456');
INSERT into CustomerLogin VALUES ('mory@osakacoinageco.net',177,'Y2hlZXNl',2,'Texas');
INSERT into CustomerLogin VALUES ('michael@vitachromeinc.net',181,'cGFzcw==',2,'FL');
INSERT into CustomerLogin VALUES ('karttunen@coinsoffinland.net',186,'bWF0cml4',2,'TX');
INSERT into CustomerLogin VALUES ('ashworth@avstores.net',187,'YWFhYWFh',4,'123456');
INSERT into CustomerLogin VALUES ('cassidy@clovercollections.net',189,'c3VwZXJtYW4=',3,'cat');
INSERT into CustomerLogin VALUES ('leslie@metalscoinclassicsinc.com',198,'cG9rZW1vbg==',3,'cat');
INSERT into CustomerLogin VALUES ('devon@ukcollectables.com',201,'Zm9vdGJhbGw=',3,'dog');
INSERT into CustomerLogin VALUES ('yoshi@canadiangoldexchangenetwork.com',202,'YmxhaGJsYWg=',4,'letmein');
INSERT into CustomerLogin VALUES ('miguel@onlinepreciouscollectables.net',204,'aGVscG1l',2,'Florida');
INSERT into CustomerLogin VALUES ('julie@coins4grownupscom.com',205,'bWljaGFlbA==',2,'Texas');
INSERT into CustomerLogin VALUES ('walker@asianshoppingnetwork.com',206,'c2VjcmV0',3,'dog');
INSERT into CustomerLogin VALUES ('frdrique@preciouscaravy.net',209,'cGFzc3dvcmQx',4,'gold');
INSERT into CustomerLogin VALUES ('gao@kingkongcollectables.net',211,'aWxvdmV5b3Ux',1,'sky blue');
INSERT into CustomerLogin VALUES ('eduardo@enacodistributors.com',216,'c29jY2FyMQ==',1,'light blue');
INSERT into CustomerLogin VALUES ('mary@boardscoinsco.com',219,'aWxvdmV5b3Uh',2,'NY');
INSERT into CustomerLogin VALUES ('horst@natrlichmetals.com',223,'YmFzZWJhbGwx',2,'Ohio');
INSERT into CustomerLogin VALUES ('palle@heintzecollectables.com',227,'cXdlcnR5MQ==',4,'password');
INSERT into CustomerLogin VALUES ('jean@qubechomeshoppingnetwork.com',233,'b3Jhbmdl',2,'California');
INSERT into CustomerLogin VALUES ('alejandra@angresellers.net',237,'aHVudGVy',3,'animal');
INSERT into CustomerLogin VALUES ('valarie@collectablepreciousdesignsco.com',239,'amVubmlmZXI=',4,'coins');
INSERT into CustomerLogin VALUES ('helen@goldbymailcouk.net',240,'c25vb3B5',2,'Missouri');
INSERT into CustomerLogin VALUES ('annette@alphacognac.net',242,'Z2luZ2Vy',3,'cat');
INSERT into CustomerLogin VALUES ('renate@messnershoppingnetwork.com',247,'bXVzdGFuZw==',2,'California');
INSERT into CustomerLogin VALUES ('paolo@amicacoinsco.com',249,'dGVzdGluZw==',4,'coins');

INSERT into SecurityQuestions VALUES (1,'What is your favorite color?');
INSERT into SecurityQuestions VALUES (2,'In what state did you graduate high school?');
INSERT into SecurityQuestions VALUES (3,'What is your favorite type of animal?');
INSERT into SecurityQuestions VALUES (4,'What is your preferred internet password?');
INSERT into SecurityQuestions VALUES (5,'Where did you go on your honeymoon?');


INSERT into Employees VALUES (1002,'Murphy','Diane','x5800','dmurphy@webgoatcoins.com','1',NULL,'President');
INSERT into Employees VALUES (1056,'Patterson','Mary','x4611','mpatterso@webgoatcoins.com','1',1002,'VP Sales');
INSERT into Employees VALUES (1076,'Firrelli','Jeff','x9273','jfirrelli@webgoatcoins.com','1',1002,'VP Marketing');
INSERT into Employees VALUES (1088,'Patterson','William','x4871','wpatterson@webgoatcoins.com','6',1056,'Sales Manager (APAC)');
INSERT into Employees VALUES (1102,'Bondur','Gerard','x5408','gbondur@webgoatcoins.com','4',1056,'Sale Manager (EMEA)');
INSERT into Employees VALUES (1143,'Bow','Anthony','x5428','abow@webgoatcoins.com','1',1056,'Sales Manager (NA)');
INSERT into Employees VALUES (1165,'Jennings','Leslie','x3291','ljennings@webgoatcoins.com','1',1143,'Sales Rep');
INSERT into Employees VALUES (1166,'Thompson','Leslie','x4065','lthompson@webgoatcoins.com','1',1143,'Sales Rep');
INSERT into Employees VALUES (1188,'Firrelli','Julie','x2173','jfirrelli@webgoatcoins.com','2',1143,'Sales Rep');
INSERT into Employees VALUES (1216,'Patterson','Steve','x4334','spatterson@webgoatcoins.com','2',1143,'Sales Rep');
INSERT into Employees VALUES (1286,'Tseng','Foon Yue','x2248','ftseng@webgoatcoins.com','3',1143,'Sales Rep');
INSERT into Employees VALUES (1323,'Vanauf','George','x4102','gvanauf@webgoatcoins.com','3',1143,'Sales Rep');
INSERT into Employees VALUES (1337,'Bondur','Loui','x6493','lbondur@webgoatcoins.com','4',1102,'Sales Rep');
INSERT into Employees VALUES (1370,'Hernandez','Gerard','x2028','ghernande@webgoatcoins.com','4',1102,'Sales Rep');
INSERT into Employees VALUES (1401,'Castillo','Pamela','x2759','pcastillo@webgoatcoins.com','4',1102,'Sales Rep');
INSERT into Employees VALUES (1501,'Bott','Larry','x2311','lbott@webgoatcoins.com','7',1102,'Sales Rep');
INSERT into Employees VALUES (1504,'Jones','Barry','x102','bjones@webgoatcoins.com','7',1102,'Sales Rep');
INSERT into Employees VALUES (1611,'Fixter','Andy','x101','afixter@webgoatcoins.com','6',1088,'Sales Rep');
INSERT into Employees VALUES (1612,'Marsh','Peter','x102','pmarsh@webgoatcoins.com','6',1088,'Sales Rep');
INSERT into Employees VALUES (1619,'King','Tom','x103','tking@webgoatcoins.com','6',1088,'Sales Rep');
INSERT into Employees VALUES (1621,'Nishi','Mami','x101','mnishi@webgoatcoins.com','5',1056,'Sales Rep');
INSERT into Employees VALUES (1625,'Kato','Yoshimi','x102','ykato@webgoatcoins.com','5',1621,'Sales Rep');
INSERT into Employees VALUES (1702,'Gerard','Martin','x2312','mgerard@webgoatcoins.com','4',1102,'Sales Rep');

INSERT into Offices VALUES (1,'San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA');
INSERT into Offices VALUES (2,'Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','2107','NA');
INSERT into Offices VALUES (3,'NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA');
INSERT into Offices VALUES (4,'Paris','+33 14 723 4404','43 Rue Jouffroy D\'abbans',NULL,NULL,'France','75017','EMEA');
INSERT into Offices VALUES (5,'Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan');
INSERT into Offices VALUES (6,'Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC');
INSERT into Offices VALUES (7,'London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');

INSERT into OrderDetails VALUES (10100,'S18_1749',30,136,3);
INSERT into OrderDetails VALUES (10100,'S18_2248',50,55.09,2);
INSERT into OrderDetails VALUES (10100,'S18_4409',22,75.46,4);
INSERT into OrderDetails VALUES (10100,'S24_3969',49,35.29,1);
INSERT into OrderDetails VALUES (10101,'S18_2325',25,108.06,4);
INSERT into OrderDetails VALUES (10101,'S18_2795',26,167.06,1);
INSERT into OrderDetails VALUES (10101,'S24_1937',45,32.53,3);
INSERT into OrderDetails VALUES (10101,'S24_2022',46,44.35,2);
INSERT into OrderDetails VALUES (10102,'S18_1342',39,95.55,2);
INSERT into OrderDetails VALUES (10102,'S18_1367',41,43.13,1);
INSERT into OrderDetails VALUES (10103,'S10_1949',26,214.3,11);
INSERT into OrderDetails VALUES (10103,'S10_4962',42,119.67,4);
INSERT into OrderDetails VALUES (10103,'S12_1666',27,121.64,8);
INSERT into OrderDetails VALUES (10103,'S18_1097',35,94.5,10);
INSERT into OrderDetails VALUES (10103,'S18_2432',22,58.34,2);
INSERT into OrderDetails VALUES (10103,'S18_2949',27,92.19,12);
INSERT into OrderDetails VALUES (10103,'S18_2957',35,61.84,14);
INSERT into OrderDetails VALUES (10103,'S18_3136',25,86.92,13);
INSERT into OrderDetails VALUES (10103,'S18_3320',46,86.31,16);
INSERT into OrderDetails VALUES (10103,'S18_4600',36,98.07,5);
INSERT into OrderDetails VALUES (10103,'S18_4668',41,40.75,9);
INSERT into OrderDetails VALUES (10103,'S24_2300',36,107.34,1);
INSERT into OrderDetails VALUES (10103,'S24_4258',25,88.62,15);
INSERT into OrderDetails VALUES (10103,'S32_1268',31,92.46,3);
INSERT into OrderDetails VALUES (10103,'S32_3522',45,63.35,7);
INSERT into OrderDetails VALUES (10103,'S700_2824',42,94.07,6);
INSERT into OrderDetails VALUES (10104,'S12_3148',34,131.44,1);
INSERT into OrderDetails VALUES (10104,'S12_4473',41,111.39,9);
INSERT into OrderDetails VALUES (10104,'S18_2238',24,135.9,8);
INSERT into OrderDetails VALUES (10104,'S18_2319',29,122.73,12);
INSERT into OrderDetails VALUES (10104,'S18_3232',23,165.95,13);
INSERT into OrderDetails VALUES (10104,'S18_4027',38,119.2,3);
INSERT into OrderDetails VALUES (10104,'S24_1444',35,52.02,6);
INSERT into OrderDetails VALUES (10104,'S24_2840',44,30.41,10);
INSERT into OrderDetails VALUES (10104,'S24_4048',26,106.45,5);
INSERT into OrderDetails VALUES (10104,'S32_2509',35,51.95,11);
INSERT into OrderDetails VALUES (10104,'S32_3207',49,56.55,4);
INSERT into OrderDetails VALUES (10104,'S50_1392',33,114.59,7);
INSERT into OrderDetails VALUES (10104,'S50_1514',32,53.31,2);
INSERT into OrderDetails VALUES (10105,'S10_4757',50,127.84,2);
INSERT into OrderDetails VALUES (10105,'S12_1108',41,205.72,15);
INSERT into OrderDetails VALUES (10105,'S12_3891',29,141.88,14);
INSERT into OrderDetails VALUES (10105,'S18_3140',22,136.59,11);
INSERT into OrderDetails VALUES (10105,'S18_3259',38,87.73,13);
INSERT into OrderDetails VALUES (10105,'S18_4522',41,75.48,10);
INSERT into OrderDetails VALUES (10105,'S24_2011',43,117.97,9);
INSERT into OrderDetails VALUES (10105,'S24_3151',44,73.46,4);
INSERT into OrderDetails VALUES (10105,'S24_3816',50,75.47,1);
INSERT into OrderDetails VALUES (10105,'S700_1138',41,54,5);
INSERT into OrderDetails VALUES (10105,'S700_1938',29,86.61,12);
INSERT into OrderDetails VALUES (10105,'S700_2610',31,60.72,3);
INSERT into OrderDetails VALUES (10105,'S700_3505',39,92.16,6);
INSERT into OrderDetails VALUES (10105,'S700_3962',22,99.31,7);
INSERT into OrderDetails VALUES (10105,'S72_3212',25,44.77,8);
INSERT into OrderDetails VALUES (10106,'S18_1662',36,134.04,12);
INSERT into OrderDetails VALUES (10106,'S18_2581',34,81.1,2);
INSERT into OrderDetails VALUES (10106,'S18_3029',41,80.86,18);
INSERT into OrderDetails VALUES (10106,'S18_3856',41,94.22,17);
INSERT into OrderDetails VALUES (10106,'S24_1785',28,107.23,4);
INSERT into OrderDetails VALUES (10106,'S24_2841',49,65.77,13);
INSERT into OrderDetails VALUES (10106,'S24_3420',31,55.89,14);
INSERT into OrderDetails VALUES (10106,'S24_3949',50,55.96,11);
INSERT into OrderDetails VALUES (10106,'S24_4278',26,71,3);
INSERT into OrderDetails VALUES (10106,'S32_4289',33,65.35,5);
INSERT into OrderDetails VALUES (10106,'S50_1341',39,35.78,6);
INSERT into OrderDetails VALUES (10106,'S700_1691',31,91.34,7);
INSERT into OrderDetails VALUES (10106,'S700_2047',30,85.09,16);
INSERT into OrderDetails VALUES (10106,'S700_2466',34,99.72,9);
INSERT into OrderDetails VALUES (10106,'S700_2834',32,113.9,1);
INSERT into OrderDetails VALUES (10106,'S700_3167',44,76,8);
INSERT into OrderDetails VALUES (10106,'S700_4002',48,70.33,10);
INSERT into OrderDetails VALUES (10106,'S72_1253',48,43.7,15);
INSERT into OrderDetails VALUES (10107,'S10_1678',30,81.35,2);
INSERT into OrderDetails VALUES (10107,'S10_2016',39,105.86,5);
INSERT into OrderDetails VALUES (10107,'S10_4698',27,172.36,4);
INSERT into OrderDetails VALUES (10107,'S12_2823',21,122,1);
INSERT into OrderDetails VALUES (10107,'S18_2625',29,52.7,6);
INSERT into OrderDetails VALUES (10107,'S24_1578',25,96.92,3);
INSERT into OrderDetails VALUES (10107,'S24_2000',38,73.12,7);
INSERT into OrderDetails VALUES (10107,'S32_1374',20,88.9,8);
INSERT into OrderDetails VALUES (10108,'S12_1099',33,165.38,6);
INSERT into OrderDetails VALUES (10108,'S12_3380',45,96.3,4);
INSERT into OrderDetails VALUES (10108,'S12_3990',39,75.81,7);
INSERT into OrderDetails VALUES (10108,'S12_4675',36,107.1,3);
INSERT into OrderDetails VALUES (10108,'S18_1889',38,67.76,2);
INSERT into OrderDetails VALUES (10108,'S18_3278',26,73.17,9);
INSERT into OrderDetails VALUES (10108,'S18_3482',29,132.29,8);
INSERT into OrderDetails VALUES (10108,'S18_3782',43,52.84,12);
INSERT into OrderDetails VALUES (10108,'S18_4721',44,139.87,11);
INSERT into OrderDetails VALUES (10108,'S24_2360',35,64.41,15);
INSERT into OrderDetails VALUES (10108,'S24_3371',30,60.01,5);
INSERT into OrderDetails VALUES (10108,'S24_3856',40,132,1);
INSERT into OrderDetails VALUES (10108,'S24_4620',31,67.1,10);
INSERT into OrderDetails VALUES (10108,'S32_2206',27,36.21,13);
INSERT into OrderDetails VALUES (10108,'S32_4485',31,87.76,16);
INSERT into OrderDetails VALUES (10108,'S50_4713',34,74.85,14);
INSERT into OrderDetails VALUES (10109,'S18_1129',26,117.48,4);
INSERT into OrderDetails VALUES (10109,'S18_1984',38,137.98,3);
INSERT into OrderDetails VALUES (10109,'S18_2870',26,126.72,1);
INSERT into OrderDetails VALUES (10109,'S18_3232',46,160.87,5);
INSERT into OrderDetails VALUES (10109,'S18_3685',47,125.74,2);
INSERT into OrderDetails VALUES (10109,'S24_2972',29,32.1,6);
INSERT into OrderDetails VALUES (10110,'S18_1589',37,118.22,16);
INSERT into OrderDetails VALUES (10110,'S18_1749',42,153,7);
INSERT into OrderDetails VALUES (10110,'S18_2248',32,51.46,6);
INSERT into OrderDetails VALUES (10110,'S18_2325',33,115.69,4);
INSERT into OrderDetails VALUES (10110,'S18_2795',31,163.69,1);
INSERT into OrderDetails VALUES (10110,'S18_4409',28,81.91,8);
INSERT into OrderDetails VALUES (10110,'S18_4933',42,62,9);
INSERT into OrderDetails VALUES (10110,'S24_1046',36,72.02,13);
INSERT into OrderDetails VALUES (10110,'S24_1628',29,43.27,15);
INSERT into OrderDetails VALUES (10110,'S24_1937',20,28.88,3);
INSERT into OrderDetails VALUES (10110,'S24_2022',39,40.77,2);
INSERT into OrderDetails VALUES (10110,'S24_2766',43,82.69,11);
INSERT into OrderDetails VALUES (10110,'S24_2887',46,112.74,10);
INSERT into OrderDetails VALUES (10110,'S24_3191',27,80.47,12);
INSERT into OrderDetails VALUES (10110,'S24_3432',37,96.37,14);
INSERT into OrderDetails VALUES (10110,'S24_3969',48,35.29,5);
INSERT into OrderDetails VALUES (10111,'S18_1342',33,87.33,6);
INSERT into OrderDetails VALUES (10111,'S18_1367',48,48.52,5);
INSERT into OrderDetails VALUES (10111,'S18_2957',28,53.09,2);
INSERT into OrderDetails VALUES (10111,'S18_3136',43,94.25,1);
INSERT into OrderDetails VALUES (10111,'S18_3320',39,91.27,4);
INSERT into OrderDetails VALUES (10111,'S24_4258',26,85.7,3);
INSERT into OrderDetails VALUES (10112,'S10_1949',29,197.16,1);
INSERT into OrderDetails VALUES (10112,'S18_2949',23,85.1,2);
INSERT into OrderDetails VALUES (10113,'S12_1666',21,121.64,2);
INSERT into OrderDetails VALUES (10113,'S18_1097',49,101.5,4);
INSERT into OrderDetails VALUES (10113,'S18_4668',50,43.27,3);
INSERT into OrderDetails VALUES (10113,'S32_3522',23,58.82,1);
INSERT into OrderDetails VALUES (10114,'S10_4962',31,128.53,8);
INSERT into OrderDetails VALUES (10114,'S18_2319',39,106.78,3);
INSERT into OrderDetails VALUES (10114,'S18_2432',45,53.48,6);
INSERT into OrderDetails VALUES (10114,'S18_3232',48,169.34,4);
INSERT into OrderDetails VALUES (10114,'S18_4600',41,105.34,9);
INSERT into OrderDetails VALUES (10114,'S24_2300',21,102.23,5);
INSERT into OrderDetails VALUES (10114,'S24_2840',24,28.64,1);
INSERT into OrderDetails VALUES (10114,'S32_1268',32,88.61,7);
INSERT into OrderDetails VALUES (10114,'S32_2509',28,43.83,2);
INSERT into OrderDetails VALUES (10114,'S700_2824',42,82.94,10);
INSERT into OrderDetails VALUES (10115,'S12_4473',46,111.39,5);
INSERT into OrderDetails VALUES (10115,'S18_2238',46,140.81,4);
INSERT into OrderDetails VALUES (10115,'S24_1444',47,56.64,2);
INSERT into OrderDetails VALUES (10115,'S24_4048',44,106.45,1);
INSERT into OrderDetails VALUES (10115,'S50_1392',27,100.7,3);
INSERT into OrderDetails VALUES (10116,'S32_3207',27,60.28,1);
INSERT into OrderDetails VALUES (10117,'S12_1108',33,195.33,9);
INSERT into OrderDetails VALUES (10117,'S12_3148',43,148.06,10);
INSERT into OrderDetails VALUES (10117,'S12_3891',39,173.02,8);
INSERT into OrderDetails VALUES (10117,'S18_3140',26,121.57,5);
INSERT into OrderDetails VALUES (10117,'S18_3259',21,81.68,7);
INSERT into OrderDetails VALUES (10117,'S18_4027',22,122.08,12);
INSERT into OrderDetails VALUES (10117,'S18_4522',23,73.73,4);
INSERT into OrderDetails VALUES (10117,'S24_2011',41,119.2,3);
INSERT into OrderDetails VALUES (10117,'S50_1514',21,55.65,11);
INSERT into OrderDetails VALUES (10117,'S700_1938',38,75.35,6);
INSERT into OrderDetails VALUES (10117,'S700_3962',45,89.38,1);
INSERT into OrderDetails VALUES (10117,'S72_3212',50,52.42,2);
INSERT into OrderDetails VALUES (10118,'S700_3505',36,86.15,1);
INSERT into OrderDetails VALUES (10119,'S10_4757',46,112.88,11);
INSERT into OrderDetails VALUES (10119,'S18_1662',43,151.38,3);
INSERT into OrderDetails VALUES (10119,'S18_3029',21,74.84,9);
INSERT into OrderDetails VALUES (10119,'S18_3856',27,95.28,8);
INSERT into OrderDetails VALUES (10119,'S24_2841',41,64.4,4);
INSERT into OrderDetails VALUES (10119,'S24_3151',35,72.58,13);
INSERT into OrderDetails VALUES (10119,'S24_3420',20,63.12,5);
INSERT into OrderDetails VALUES (10119,'S24_3816',35,82.18,10);
INSERT into OrderDetails VALUES (10119,'S24_3949',28,62.1,2);
INSERT into OrderDetails VALUES (10119,'S700_1138',25,57.34,14);
INSERT into OrderDetails VALUES (10119,'S700_2047',29,74.23,7);
INSERT into OrderDetails VALUES (10119,'S700_2610',38,67.22,12);
INSERT into OrderDetails VALUES (10119,'S700_4002',26,63.67,1);
INSERT into OrderDetails VALUES (10119,'S72_1253',28,40.22,6);
INSERT into OrderDetails VALUES (10120,'S10_2016',29,118.94,3);
INSERT into OrderDetails VALUES (10120,'S10_4698',46,158.8,2);
INSERT into OrderDetails VALUES (10120,'S18_2581',29,82.79,8);
INSERT into OrderDetails VALUES (10120,'S18_2625',46,57.54,4);
INSERT into OrderDetails VALUES (10120,'S24_1578',35,110.45,1);
INSERT into OrderDetails VALUES (10120,'S24_1785',39,93.01,10);
INSERT into OrderDetails VALUES (10120,'S24_2000',34,72.36,5);
INSERT into OrderDetails VALUES (10120,'S24_4278',29,71.73,9);
INSERT into OrderDetails VALUES (10120,'S32_1374',22,94.9,6);
INSERT into OrderDetails VALUES (10120,'S32_4289',29,68.79,11);
INSERT into OrderDetails VALUES (10120,'S50_1341',49,41.46,12);
INSERT into OrderDetails VALUES (10120,'S700_1691',47,91.34,13);
INSERT into OrderDetails VALUES (10120,'S700_2466',24,81.77,15);
INSERT into OrderDetails VALUES (10120,'S700_2834',24,106.79,7);
INSERT into OrderDetails VALUES (10120,'S700_3167',43,72,14);


INSERT into Orders VALUES (10100,'2010-01-06','2010-01-13','2010-01-10','Shipped',NULL,112);
INSERT into Orders VALUES (10101,'2010-01-09','2010-01-18','2010-01-11','Shipped','Check on availability.',169);
INSERT into Orders VALUES (10102,'2010-01-10','2010-01-18','2010-01-14','Shipped',NULL,119);
INSERT into Orders VALUES (10103,'2010-01-29','2010-02-07','2010-02-02','Shipped',NULL,119);
INSERT into Orders VALUES (10104,'2010-01-31','2010-02-09','2010-02-01','Shipped',NULL,141);
INSERT into Orders VALUES (10105,'2010-02-11','2010-02-21','2010-02-12','Shipped',NULL,145);
INSERT into Orders VALUES (10106,'2010-02-17','2010-02-24','2010-02-21','Shipped',NULL,278);
INSERT into Orders VALUES (10107,'2010-02-24','2010-03-03','2010-02-26','Shipped','Difficult to negotiate with customer. We need more marketing materials',131);
INSERT into Orders VALUES (10108,'2010-03-03','2010-03-12','2010-03-08','Shipped',NULL,385);
INSERT into Orders VALUES (10109,'2010-03-10','2010-03-19','2010-03-11','Shipped','Customer requested that FedEx Ground is used for this shipping',119);
INSERT into Orders VALUES (10110,'2010-03-18','2010-03-24','2010-03-20','Shipped',NULL,187);
INSERT into Orders VALUES (10111,'2010-03-25','2010-03-31','2010-03-30','Shipped',NULL,129);
INSERT into Orders VALUES (10112,'2010-03-24','2010-04-03','2010-03-29','Shipped','Customer requested that ad materials (such as posters');
INSERT into Orders VALUES (10113,'2010-03-26','2010-04-02','2010-03-27','Shipped',NULL,124);
INSERT into Orders VALUES (10114,'2010-04-01','2010-04-07','2010-04-02','Shipped',NULL,172);
INSERT into Orders VALUES (10115,'2010-04-04','2010-04-12','2010-04-07','Shipped',NULL,424);
INSERT into Orders VALUES (10116,'2010-04-11','2010-04-19','2010-04-13','Shipped',NULL,381);
INSERT into Orders VALUES (10117,'2010-04-16','2010-04-24','2010-04-17','Shipped',NULL,119);
INSERT into Orders VALUES (10118,'2010-04-21','2010-04-29','2010-04-26','Shipped','Customer has worked with some of our vendors in the past and is aware of their MSRP',216);
INSERT into Orders VALUES (10119,'2010-04-28','2010-05-05','2010-05-02','Shipped',NULL,382);
INSERT into Orders VALUES (10120,'2010-04-29','2010-05-08','2010-05-01','Shipped',NULL,114);

LOAD DATA LOCAL INFILE 'DB_Scripts/datafiles/payments.txt' INTO TABLE Payments
          FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

SHOW WARNINGS LIMIT 100;

INSERT into Categories VALUES (1,'Gold Coins','A gold coin is a coin made mostly or entirely of gold. Gold has been used for coins practically since the invention of coinage\, originally because of gold\'s intrinsic value. In modern times\, most gold coins are intended either to be sold to collectors\, or to be used as bullion coins—coins whose nominal value is irrelevant and which serve primarily as a method of investing in gold.  Gold has been used as money for many reasons. It is fungible\, with a low spread between the prices to buy and sell. Gold is also easily transportable\, as it has a high value to weight ratio\, compared to other commodities\, such as silver. Gold can be divided into smaller units\, without destroying its value; it can also be melted into ingots\, and re-coined. The density of gold is higher than most other metals\, making it difficult to pass counterfeits. Gold is extremely unreactive. The scarcity of gold stabilizes its value.');
INSERT into Categories VALUES (2,'Silver Coins','Silver coins are possibly the oldest mass produced form of coinage. Silver has been used as a coinage metal since the times of the Greeks. Their silver drachmas were popular trade coins.  As with all collectible coins\, many factors determine the value of a collectible silver coin\, such as its rarity\, demand\, condition and the number originally minted. Ancient silver coins coveted by collectors include the Denarius and Miliarense\, while more recent collectible silver coins include the Morgan Dollar and the Spanish Milled Dollar.  Other than collector\'s silver coins\, silver bullion coins are popular among people who desire a hedge against currency inflation or store of value. Silver has an international currency symbol of XAG under ISO 4217.  Before 1797\, British pennies used to be made out of silver while the ancient Persians used silver coins between 612-330 BC.');
INSERT into Categories VALUES (3,'Platinum Coins','Platinum coins are a form of currency. Platinum has an international currency symbol under ISO 4217 of XPT. The issues of legitimate platinum coins were initiated by Spain in Spanish-colonized America in the 18th century and continued by the Russian Empire in the 19th century. As a form of currency\, these coins proved to be impractical: platinum resembles many less expensive metals\, and\, unlike the more malleable and ductile silver and gold\, it is very difficult to work. Several commemorative coin sets have been issued starting from 1978 and became popular among coin collectors. The major platinum bullion coins include the American Platinum Eagle\, the Canadian Platinum Maple Leaf\, the Australian Platinum Koala\, the Isle of Man Noble\, the Chinese Platinum Panda and several series by the Soviet Union and later by the Russian Federation. The production of most platinum coins stopped around 2005 except for the American Platinum Eagle – one of the world\'s most popular platinum coins – which was still being produced in 2009.');
INSERT into Categories VALUES (4,'Commemorative Coins','Congress authorizes commemorative coins that celebrate and honor American people\,  places\, events\, and institutions.  Although these coins are legal tender\, they are not minted for general circulation.  Each commemorative coin is produced by the United States Mint in limited quantity and is only available for a limited time.');
INSERT into Categories VALUES (5,'Yearly Designs','Designed coins\, where you can browse and purchase special coins honoring a wide range of humanities accomplishments.   Qualities and availability are not guaranteed.  Please call to check all availability.  Each set is issued for a limited time.');

INSERT into Products VALUES ('S10_1678','The 2012 Star-Spangled Banner Commemorative Coins',4,'SSB_Gold_thumb_LineArt.jpg','US Mint','Depicts a naval battle scene from the War of 1812\, with an American sailing ship in the foreground and a damaged and fleeing British ship in the background. Inscriptions are IN GOD WE TRUST\, LIBERTY and 1812  2012.',3702,0,0.1);
INSERT into Products VALUES ('S10_2016','The 2012 Infantry Soldier Silver Dollar',2,'2012-Natl-Infantry-Commem-thumb.jpg','US Mint','The design features a modern Infantry soldier on rocky ground charging forward and beckoning the troops to follow\, symbolizing the Follow Me motto of the Infantry.  Inscriptions are LIBERTY\, IN GOD WE TRUST and 2012.',4886,0,0.1);
INSERT into Products VALUES ('S10_4757','The 2011 United States Army Commemorative Coins',4,'HOTSPRINGS_thumb.jpg','US Mint','This design represents the U.S. Army\'s war service from the Revolutionary War through today\, symbolizing its continuity of strength and readiness. It features, from left to right\, Continental\, Civil War\, modern\, World War II and World War I soldiers. Inscriptions are LIBERTY\, 2011 and IN GOD WE TRUST.',3388,0,0.1);
INSERT into Products VALUES ('S12_1099','Quarters Issued in 2011',4,'2011-Unc-Gettysburg_thumb.jpg','US Mint','Depicts the 72nd Pennsylvania Infantry Monument\, which is located on the battle line of the Union Army at Cemetery Ridge. Inscriptions are GETTYSBURG\, PENNSYLVANIA\, 2011 and E PLURIBUS UNUM.',1285,0,0.1);
INSERT into Products VALUES ('S12_1666','Quarters Issued in 2012',4,'2012-ATB-El-Yunque_thumb.jpg','US Mint','Depicts a Coqui tree frog sitting on a leaf and a Puerto Rican parrot behind an epiphyte plant with tropical flora in the background. Inscriptions are EL YUNQUE\, PUERTO RICO\, 2012 and E PLURIBUS UNUM.',4081,0,0.1);
INSERT into Products VALUES ('S12_3148','Native American \$1 Coin',4,'stacked-coins2_thumb.jpg','US Mint','The obverse design remains the central figure of Sacagawea first produced in 2000\, and contains the inscriptions LIBERTY and IN GOD WE TRUST.',365,0,0.1);
INSERT into Products VALUES ('S12_3891','2012 Designs',5,'21_Arthur_Pre1_thumb.jpg','US Mint','Features an image of Chester Arthur with the inscriptions CHESTER ARTHUR\, IN GOD WE TRUST\, 21st PRESIDENT and 1881-1885.',4191,0,0.1);
INSERT into Products VALUES ('S12_4473','2011 Designs',5,'2011AJohnson_thumb.jpg','US Mint','Features an image of Andrew Johnson with the inscriptions Andrew Johnson\, In God We Trust\, 17th President and 1865-1869.',1288,0,0.1);
INSERT into Products VALUES ('S18_1097','2010 Designs',5,'2010MFillmore_thumb.jpg','US Mint','Features an image of Millard Fillmore with the inscriptions Millard Fillmore, In God We Trust\, 13th President and 1850-1853.',3001,0,0.1);
INSERT into Products VALUES ('S18_1342','2009 Designs',5,'2009WHHarrisonObvthumb.jpg','US Mint','Features an image of William Henry Harrison with the inscriptions William Henry Harrison\, In God We Trust\, 9th President and 1841.',1341,0,0.1);
INSERT into Products VALUES ('S18_1589','2008 Designs',5,'thumbJMonroe.jpg','US Mint','Features an image of James Monroe with the inscriptions James Monroe\, 5th President and 1817 – 1825.',3392,0,0.1);
INSERT into Products VALUES ('S18_1749','2007 Designs',5,'thumbWashington.jpg','US Mint','Features an image of George Washington with the inscriptions George Washington\, 1st President and 1789 – 1797.',1026,0,0.1);
INSERT into Products VALUES ('S18_1984','John F. Kennedy Half-Dollar',4,'2012-Proof-HalfDollar-thumb.jpg','US Mint','Depicts a bust of President Kennedy.',2659,0,0.1);
INSERT into Products VALUES ('S18_2248','Roosevelt Dime',4,'2012-Proof-Nickel-thumb.jpg','US Mint','bears a new image of President Thomas Jefferson based on the Rembrandt Peale painting of 1800',3944,0,0.1);
INSERT into Products VALUES ('S18_2325','American Eagle Platinum Reverse Proof Coins',3,'07AEPltProofRevThumb.jpg','US Mint','Portrait of Liberty\, Lady Liberty looking toward future.',3300,0,0.1);
INSERT into Products VALUES ('S18_2581','American Eagle Platinum Proof Coins',3,'2011_AE_PlatProof_thumb.jpg','US Mint','Portrait of Liberty\, Lady Liberty looking toward future.',3905,0,0.1);
INSERT into Products VALUES ('S18_2795','American Eagle Gold Proof Coins',1,'2010_AEGoldProof_thumb.jpg','US Mint','Modified design of Saint Gaudens\' U.S. \$20 Gold Coin Design, Standing Liberty.',814,0,0.1);
INSERT into Products VALUES ('S18_2949','American Eagle Silver Proof Coins',2,'2008_AESilverProof_thumb.jpg','US Mint','Walking Liberty\, from Weinman\'s Walking Liberty Half Dollar\, minted from 1916 1947.',1074,0,0.1);
INSERT into Products VALUES ('S18_3029','American Eagle Platinum Bullion Coins',3,'2008_AE_Plat_Bullion_Thumb.jpg','US Mint','Portrait of Liberty\, Lady Liberty looking toward future.',4095,0,0.1);
INSERT into Products VALUES ('S18_3140','American Eagle Gold Bullion Coins',1,'2012-Gold-Eagle-bullion-thumb.jpg','US Mint','Modified design of Saint Gaudens\' U.S. $20 Gold Coin Design\, Standing Liberty.',3608,0,0.1);
INSERT into Products VALUES ('S18_3233','American Eagle Silver Bullion Coins',2,'2012-SilverEagle-bullion-thumb.jpg','US Mint','Walking Liberty, from Weinman\'s Walking Liberty Half Dollar\, minted from 1916-1947.',2943,0,0.1);
INSERT into Products VALUES ('S18_3278','American Eagle Platinum Uncirculated Coin',3,'AEPlatUnc_thumb.jpg','US Mint','Portrait of Liberty\, Lady Liberty looking toward future.',2280,0,0.1);
INSERT into Products VALUES ('S18_3482','American Eagle Gold Uncirculated Coin',1,'2011-Gold-Eagle-unc-thumb.jpg','US Mint','Modified design of Saint Gaudens\' U.S. $20 Gold Coin Design\, Standing Liberty.',4924,0,0.1);
INSERT into Products VALUES ('S18_3782','American Eagle Silver Uncirculated Coin',2,'2011-SilverEagle-unc-thumb.jpg','US Mint','Walking Liberty\, from Weinman\'s Walking Liberty Half Dollar\, minted from 1916-1947.',4358,0,0.1);
INSERT into Products VALUES ('S18_4027','America the Beautiful Silver Bullion Coins',2,'HOTSPRINGS_thumb.jpg','US Mint','Depicts the facade of the Hot Springs National Park headquarters building with a fountain in the foreground. Inscriptions are HOT SPRINGS\, ARKANSAS\, 2010 and E PLURIBUS UNUM.',1212,0,0.1);
INSERT into Products VALUES ('S18_4522','First Spouse Gold Coin Program',1,'EJohnson_Proof-thumb.jpg','US Mint','This design depicts three children dancing and a  Marine Band fiddler playing at the children\'s ball that was held for President Johnson\'s  60th birthday.',4261,0,0.1);

