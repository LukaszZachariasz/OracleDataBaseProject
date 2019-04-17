
--Wstawianie Pozycji Zawodnikow
INSERT INTO POZYCJA VALUES(POZYCJA_SEQ.NEXTVAL, 'Bramkarz');
INSERT INTO POZYCJA VALUES(POZYCJA_SEQ.NEXTVAL, 'Obro�ca');
INSERT INTO POZYCJA VALUES(POZYCJA_SEQ.NEXTVAL, 'Pomocnik');
INSERT INTO POZYCJA VALUES(POZYCJA_SEQ.NEXTVAL, 'Napastnik');
INSERT INTO POZYCJA VALUES(POZYCJA_SEQ.NEXTVAL, 'Rezerwowy');

--Wstawianie Klas Sedziow
INSERT INTO KLASA_SEDZIEGO VALUES(KLASA_SEDZIEGO_SEQ.NEXTVAL, 'Zawodowy');
INSERT INTO KLASA_SEDZIEGO VALUES(KLASA_SEDZIEGO_SEQ.NEXTVAL, 'TopAmator');
INSERT INTO KLASA_SEDZIEGO VALUES(KLASA_SEDZIEGO_SEQ.NEXTVAL, 'III Liga');
INSERT INTO KLASA_SEDZIEGO VALUES(KLASA_SEDZIEGO_SEQ.NEXTVAL, 'IV Liga');
INSERT INTO KLASA_SEDZIEGO VALUES(KLASA_SEDZIEGO_SEQ.NEXTVAL, 'Okr�gowy');
INSERT INTO KLASA_SEDZIEGO VALUES(KLASA_SEDZIEGO_SEQ.NEXTVAL, 'A');
INSERT INTO KLASA_SEDZIEGO VALUES(KLASA_SEDZIEGO_SEQ.NEXTVAL, 'B');
INSERT INTO KLASA_SEDZIEGO VALUES(KLASA_SEDZIEGO_SEQ.NEXTVAL, 'C');

--Wstawienie Typ�w Zdarze�
INSERT INTO TYP_ZDARZENIA VALUES(TYP_SEQ.NEXTVAL, 'Gol');
INSERT INTO TYP_ZDARZENIA VALUES(TYP_SEQ.NEXTVAL, 'Out');
INSERT INTO TYP_ZDARZENIA VALUES(TYP_SEQ.NEXTVAL, 'Faul');
INSERT INTO TYP_ZDARZENIA VALUES(TYP_SEQ.NEXTVAL, 'Rzut Ro�ny');
INSERT INTO TYP_ZDARZENIA VALUES(TYP_SEQ.NEXTVAL, 'Rzut Karny');
INSERT INTO TYP_ZDARZENIA VALUES(TYP_SEQ.NEXTVAL, 'Z�ta Kartka');
INSERT INTO TYP_ZDARZENIA VALUES(TYP_SEQ.NEXTVAL, 'Czerwona Kartka');
INSERT INTO TYP_ZDARZENIA VALUES(TYP_SEQ.NEXTVAL, 'Zmiana Zawodnik�w');
INSERT INTO TYP_ZDARZENIA VALUES(TYP_SEQ.NEXTVAL, 'Rzut Wolny');

--Wstawianie Osob - Sedziowie
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'John', 'Hover', '1989-4-7','Nowy Jork','USA');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Marian', 'Grzyb', '1985-9-11','Krak�w','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Martin', 'Older', '1988-1-22','Warszawa','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Tomas', 'Woch', '1984-4-23','Gdynia','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Maciej', 'Koch', '1982-2-16','Krak�w','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Jerzy', 'Szklanka', '1992-6-11','Kielce','Polska');

--Wstawianie Osob - Szefowie
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Victor', 'Shazam', '1979-4-7','Witebsk','Bia�oru�');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Olgierd', 'Leszcz', '1975-9-11','��d�','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Jerzy', 'Sola', '1976-1-22','Rzesz�w','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Daniel', 'Frank', '1964-4-23','Drezno','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Michael', 'Mobo', '1972-2-16','Lyon','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Adam', 'Koch', '1982-6-21','Wroc�aw','Polska');

--Wstawianie Osob - Trenerzy
--Francja
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Didier', 'Deschamps', '1968-10-15','Bayonne','Francja');
--Polska
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Adam', 'Nawa�ka', '1957-10-23','Krak�w','Polska');
--Niemcy
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Joachim', 'L�w', '1960-2-3','Sch�nau','Niemcy');
--Portugalia
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Fernando', 'Santos', '1954-10-10','Lizbona','Portugalia');

--Wstawianie Osob - Zawodnicy - Francja
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Hugo', 'Lloris', '1986-12-26','Nicea','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Christophe', 'Jallet', '1983-10-31','Cognac','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Patrice', 'Evra', '1981-5-15','Dakar','Senegal');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Adil', 'Rami', '1985-12-27','Bastia','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'N�Golo', 'Kant�', '1991-3-29','Pary�','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Yohan', 'Cabaye', '1986-1-14','Tourcoing','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Antoine', 'Griezmann', '1991-3-21','M�con','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Dimitri', 'Payet', '1987-3-29','Saint-Pierre','Reunion');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Olivier', 'Giroud', '1986-9-30','Chamb�ry','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Andr�-Pierre', 'Gignac', '1985-12-5','Martigues','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Anthony', 'Martial', '1995-12-5','Massy','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Morgan', 'Schneiderlin', '1989-11-8','Zellwiller','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Eliaquim', 'Mangala', '1991-2-13','Pary�','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Blaise', 'Matuidi', '1987-4-9','Tuluza','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Paul', 'Pogba', '1993-3-15','Lagny-sur-Marne','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Steve', 'Mandanda', '1985-3-28','Kinszasa','Demokratyczna Republika Konga');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Lucas', 'Digne', '1993-7-20','Meaux','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Moussa', 'Sissoko', '1989-8-16','Blanc-Mesnil','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Bacary', 'Sagna', '1983-2-14','Sens','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Kingsley', 'Coman', '1996-6-13','Pary�','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Laurent', 'Koscielny', '1985-9-10','Tulle','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Samuel', 'Umtiti', '1993-11-14','Jaunde','Kamerun');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Beno�t', 'Costil', '1987-7-3','Caen','Francja');
--.......

--Wstawianie Osob - Zawodnicy - Polska
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, '�ukasz', 'Piszczek', '1985-6-3','Czechowice-Dziedzice','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Jakub', 'B�aszczykowski', '1985-12-14','Truskolasy','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Robert', 'Lewandowski', '1988-6-21','Warszawa','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Kamil', 'Grosicki', '1988-6-8','Szczecin','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Micha�', 'Pazdan', '1987-9-21','Krak�w','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Kamil', 'Glik', '1988-2-3','Jastrz�bie-Zdr�j','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Artur', 'J�drzejczyk', '1987-11-4','D�bica','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Grzegorz', 'Krychowiak', '1990-1-29','Gryfice','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Tomasz', 'Jod�owiec', '1985-9-8','�ywiec','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Arkadiusz', 'Milik', '1994-2-28','Tychy','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, '�ukasz', 'Fabia�ski', '1985-4-18','Kostrzyn nad Odr�','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Bartosz', 'Kapustka', '1996-12-23','Tarn�w','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Krzysztof', 'M�czy�ski', '1987-5-23','Krak�w','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Artur', 'Boruc', '1980-2-20','Siedlce','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'S�awomir', 'Peszko', '1985-2-19','Jas�o','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Wojciech', 'Szcz�sny', '1990-4-18','Warszawa','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Jakub', 'Wawrzyniak', '1983-7-7','Kutno','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Thiago', 'Cionel', '1986-4-21','Kurytyba','Brazylia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Piotr', 'Zieli�ski ', '1994-5-20','Z�bkowice �l�skie','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Filip', 'Starzy�ski ', '1991-5-27','Szczecin','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Karol', 'Linetty', '1995-2-2','�nin','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Mariusz', 'St�pi�ski', '1995-5-12','Sieradz','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Bartosz', 'Salamon', '1991-5-1','Pozna�','Polska');
--.......

--Wstawianie Osob - Zawodnicy - Niemcy
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Manuel', 'Neuer', '1986-3-27','Gelsenkirchen','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Shkodran', 'Mustafi', '1992-4-17','Bad Hersfeld','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Jonas', 'Hector', '1990-5-27','Saarbr�cken','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Benedikt', 'H�wedes', '1988-2-29','Haltern am See','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Mats', 'Hummels', '1988-12-16','Bensberg','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Sami', 'Khedira', '1987-4-4','Stuttgart','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Bastian', 'Schweinsteiger', '1984-6-1','Kolbermoor','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Mesut', '�zil', '1986-10-15','Gelsenkirchen','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Andr�', 'Sch�rrle', '1990-11-6','Ludwigshafen am Rhein','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Lukas', 'Podolski', '1985-6-4','Gliwice','Polska');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Julian', 'Draxler', '1993-9-20','Gladbeck','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Bernd', 'Leno', '1992-3-4','Bietigheim-Bissingen','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Thomas', 'M�ller', '1989-9-13','Weilheim in Oberbayern','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Emre', 'Can ', '1994-1-12','Frankfurt nad Menem','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Julian', 'Weigl', '1995-9-8','Bad Aibling','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Jonathan', 'Tah', '1996-2-11','Hamburg','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'J�r�me', 'Boateng', '1988-9-3','Berlin','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Toni', 'Kroos', '1990-1-4','Greifswald','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Mario', 'G�tze', '1992-8-3','Memmingen','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Leroy', 'San�', '1996-1-11','Essen','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Joshua', 'Kimmich', '1995-2-8','Rottweil','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Marc-Andr�', 'ter Stegen', '1992-4-30','M�nchengladbach ','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Mario', 'G�mez', '1985-7-10','Riedlingen ','Niemcy');
--.......

--Wstawianie Osob - Zawodnicy - Portugalia
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Rui', 'Patr�cio', '1988-2-15','Leiria','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'K�pler "Pepe"', 'Ferreira', '1983-2-26','Macei�','Brazylia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Anthony', 'Lopes', '1990-10-1','Gibors','Franca');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Eduardo', 'dos Reis Carvalho', '1982-9-19','Mirandela','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Bruno', 'Alves', '1981-11-27','P�voa de Varzim','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Jos�', 'Fonte', '1983-12-22','Penafie','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Rapha�l', 'Guerreiro', '1993-12-22','Blanc-Mesnil','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Ricardo', 'Carvalho', '1978-5-18','Amarante','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Eliseu', 'Pereira dos Santos', '1983-8-1','Angra do Hero�smo','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'C�dric', 'Soares', '1991-8-31','Singen','Niemcy');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Joao', 'Moutinh', '1986-9-8','Portimao','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Joao M�rio', 'Eduardo', '1993-1-19','Porto','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Adelino Andr� Vieira "Vieirinha"', 'de Freitas', '1986-1-24','Guimaraes','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Danilo', 'Pereira', '1991-9-9','Bissau','Gwinea Bissau');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'William', 'Carvalho', '1992-4-7','Luanda','Angola');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Andr�', 'Gomes', '1993-7-30','Grij�','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Renato', 'Sanches', '1997-8-18','Lizbona','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Adrien', 'Silva', '1989-3-15','Angouleme','Francja');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Cristiano', 'Ronaldo', '1985-2-5','Funchal','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, '�derzito "�der"', 'Lopes', '1987-12-22','Bissau','Gwinea Bissau');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Lu�s Carlos Almeida "Nani"', 'da Cunha', '1986-11-17','Praia','Republiki Zielonego Przyl�dka');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Rafael Ferreira', 'Silva', '1993-5-17','Forte da Casa','Portugalia');
INSERT INTO OSOBA VALUES(OSOBA_SEQ.NEXTVAL, 'Ricardo', 'Quaresma', '1983-9-26','Vila Nova de Famalicao','Portugalia');
--.......

--Wstawianie Klub�w
--Francuski
INSERT INTO KLUB VALUES(KLUB_SEQ.NEXTVAL,'Olympique Marsylia', '1899-08-31', 2010, 2012);
--Polska
INSERT INTO KLUB VALUES(KLUB_SEQ.NEXTVAL,'Lech Pozna�', '1922-03-19', 2008, 2013);
--Niemcy
INSERT INTO KLUB VALUES(KLUB_SEQ.NEXTVAL,'Borussia Dortmund', '1909-12-19', 2009, 2014);
--Portugalia
INSERT INTO KLUB VALUES(KLUB_SEQ.NEXTVAL,'Sporting Lizbona', '1906-04-14', 2006, 2015);

--Wstawianie Dru�yn
INSERT INTO DRUZYNA VALUES(DRUZYNA_SEQ.NEXTVAL, 'OM Team Front', 3000);
INSERT INTO DRUZYNA VALUES(DRUZYNA_SEQ.NEXTVAL, 'LP Zieloni', 3001);
INSERT INTO DRUZYNA VALUES(DRUZYNA_SEQ.NEXTVAL, 'BD Berlin', 3002);
INSERT INTO DRUZYNA VALUES(DRUZYNA_SEQ.NEXTVAL, 'SP Ronald', 3003);

--Wstawianie Stadion�w
INSERT INTO STADION VALUES(STADION_SEQ.NEXTVAL, 'Stade V�lodrome', 'Marsylia', 3000);
INSERT INTO STADION VALUES(STADION_SEQ.NEXTVAL, 'Stadion Narodowy', 'Warszawa', 3001);
INSERT INTO STADION VALUES(STADION_SEQ.NEXTVAL, 'Signal Iduna Park', 'Dortmund', 3002);
INSERT INTO STADION VALUES(STADION_SEQ.NEXTVAL, 'Est�dio Jos� Alvalade', 'Lizbona', 3003);

--Wstawianie S�dzi�w i nadanie im klas
INSERT INTO SEDZIA_MECZ VALUES(SEDZIA_SEQ.NEXTVAL, 2000, 100);
INSERT INTO SEDZIA_MECZ VALUES(SEDZIA_SEQ.NEXTVAL, 2001, 100);
INSERT INTO SEDZIA_MECZ VALUES(SEDZIA_SEQ.NEXTVAL, 2002, 101);
INSERT INTO SEDZIA_MECZ VALUES(SEDZIA_SEQ.NEXTVAL, 2003, 101);
INSERT INTO SEDZIA_MECZ VALUES(SEDZIA_SEQ.NEXTVAL, 2004, 100);
INSERT INTO SEDZIA_MECZ VALUES(SEDZIA_SEQ.NEXTVAL, 2005, 100);


--Wstawienie Meczy
INSERT INTO MECZ VALUES (MECZ_SEQ.NEXTVAL, '2015-03-10', '92:10', 6000, 6001, 5001, 1000, 1001, 1002);
INSERT INTO MECZ VALUES (MECZ_SEQ.NEXTVAL, '2014-05-14', '90:55', 6002, 6003, 5002, 1003, 1004, 1005);
INSERT INTO MECZ VALUES (MECZ_SEQ.NEXTVAL, '2016-07-18', '95:05', 6003, 6000, 5003, 1001, 1003, 1002);
INSERT INTO MECZ VALUES (MECZ_SEQ.NEXTVAL, '2013-07-15', '91:45', 6002, 6001, 5002, 1005, 1000, 1003);

--Przypisywanie zawodnikow do druzyn i meczy w kt�rych brali udzial

-----------------------------------------------------------------------
-- Mecz ID 7000
-----------------------------------------------------------------------
-- Francja ----------------------
--Bramkarz
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 200, 2016, 6000); 
--Obroncy
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 201, 2017, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 201, 2018, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 201, 2017, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 201, 2018, 6000);
--Pomocnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 202, 2019, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 202, 2020, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 202, 2021, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 202, 2022, 6000);
--Napastnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 203, 2023, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 203, 2024, 6000);
--Rezerwowi
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2025, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2026, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2027, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2028, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2029, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2030, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2031, 6000);

-- Polska ---------------------
--Bramkarz
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 200, 2039, 6001); 
--Obroncy
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 201, 2040, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 201, 2041, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 201, 2042, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 201, 2043, 6001);
--Pomocnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 202, 2044, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 202, 2045, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 202, 2046, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 202, 2047, 6001);
--Napastnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 203, 2048, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 203, 2049, 6001);
--Rezerwowi
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2050, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2051, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2052, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2053, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2054, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2055, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7000, 204, 2056, 6001);


-----------------------------------------------------------------------
-- Mecz ID 7001
-----------------------------------------------------------------------
-- Niemcy ------------------------
--Bramkarz
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 200, 2062, 6002); 
--Obroncy
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 201, 2063, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 201, 2064, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 201, 2065, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 201, 2066, 6002);
--Pomocnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 202, 2067, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 202, 2068, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 202, 2069, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 202, 2070, 6002);
--Napastnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 203, 2071, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 203, 2072, 6002);
--Rezerwowi
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2073, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2074, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2075, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2076, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2077, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2078, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2079, 6002);

-- Portugalia -------------------------
--Bramkarz
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 200, 2085, 6003); 
--Obroncy
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 201, 2086, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 201, 2087, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 201, 2088, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 201, 2089, 6003);
--Pomocnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 202, 2090, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 202, 2091, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 202, 2092, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 202, 2093, 6003);
--Napastnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 203, 2094, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 203, 2095, 6003);
--Rezerwowi
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2096, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2097, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2098, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2099, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2100, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2101, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7001, 204, 2102, 6003);


-----------------------------------------------------------------------
-- Mecz ID 7002
-----------------------------------------------------------------------
-- Francja ----------------------
--Bramkarz
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 200, 2016, 6000); 
--Obroncy
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 201, 2017, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 201, 2018, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 201, 2017, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 201, 2018, 6000);
--Pomocnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 202, 2019, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 202, 2020, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 202, 2021, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 202, 2022, 6000);
--Napastnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 203, 2023, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 203, 2024, 6000);
--Rezerwowi
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2025, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2026, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2027, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2028, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2029, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2030, 6000);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2031, 6000);


-- Portugalia -------------------------
--Bramkarz
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 200, 2085, 6003); 
--Obroncy
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 201, 2086, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 201, 2087, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 201, 2088, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 201, 2089, 6003);
--Pomocnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 202, 2090, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 202, 2091, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 202, 2092, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 202, 2093, 6003);
--Napastnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 203, 2094, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 203, 2095, 6003);
--Rezerwowi
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2096, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2097, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2098, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2099, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2100, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2101, 6003);
INSERT INTO ZAWODNIK_MECZ VALUES(7002, 204, 2102, 6003);


-----------------------------------------------------------------------
-- Mecz ID 7003
-----------------------------------------------------------------------
-- Niemcy ------------------------
--Bramkarz
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 200, 2062, 6002); 
--Obroncy
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 201, 2063, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 201, 2064, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 201, 2065, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 201, 2066, 6002);
--Pomocnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 202, 2067, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 202, 2068, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 202, 2069, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 202, 2070, 6002);
--Napastnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 203, 2071, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 203, 2072, 6002);
--Rezerwowi
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2073, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2074, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2075, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2076, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2077, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2078, 6002);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2079, 6002);

-- Polska ---------------------
--Bramkarz
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 200, 2039, 6001); 
--Obroncy
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 201, 2040, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 201, 2041, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 201, 2042, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 201, 2043, 6001);
--Pomocnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 202, 2044, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 202, 2045, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 202, 2046, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 202, 2047, 6001);
--Napastnicy
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 203, 2048, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 203, 2049, 6001);
--Rezerwowi
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2050, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2051, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2052, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2053, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2054, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2055, 6001);
INSERT INTO ZAWODNIK_MECZ VALUES(7003, 204, 2056, 6001);
-----------------------------------------------------------------------

--Wstawienie zdarzen do meczy

--Zdarzenia w meczu id 7003
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '54:32', 2048, NULL, 7003, 1005);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '84:32', 2049, NULL, 7003, 1005);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '34:32', 2071, NULL, 7003, 1005);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '44:32', 2072, NULL, 7003, 1005);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4002, '77:32', 2067, 2047, 7003, 1005);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4002, '79:32', 2062, 2047, 7003, 1005);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4001, '22:32', 2062, 2045, 7003, 1005);

--Zdarzenia w meczu id 7002
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '64:32', 2095, NULL, 7002, 1001);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '24:32', 2094, NULL, 7002, 1001);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4005, '44:32', 2023, NULL, 7002, 1001);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4005, '54:32', 2024, NULL, 7002, 1001);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '34:32', 2024, NULL, 7002, 1001);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4007, '74:22', 2020, 2027, 7002, 1001);

--Zdarzenia w meczu id 7001
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '55:32', 2070, NULL, 7001, 1003);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '22:32', 2072, NULL, 7001, 1003);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4002, '48:32', 2091, 2067, 7001, 1003);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '11:32', 2094, NULL, 7001, 1003);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4003, '13:22', 2072, NULL, 7001, 1003);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4001, '23:22', 2086, 2070, 7000, 1000);

--Zdarzenia w meczu id 7000
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4005, '34:32', 2023, NULL, 7000, 1000);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4008, '84:22', 2024, NULL, 7000, 1000);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4001, '14:22', 2045, 2020, 7000, 1000);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4000, '65:32', 2023, NULL, 7000, 1000);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4001, '23:22', 2041, 2022, 7000, 1000);
INSERT INTO ZDARZENIE VALUES (ZDARZENIE_SEQ.NEXTVAL, 4007, '23:22', 2044, 2053, 7000, 1000);