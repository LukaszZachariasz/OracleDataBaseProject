SELECT
ID_KLUBU AS ID_KLUBU,
NAZWA AS Nazwa,
DATA_ZALOZENIA AS Data_zalozenia,
(SELECT IMIE FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.SZEF_ID_OSOBY) AS Imie_szefa,
(SELECT NAZWISKO FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.SZEF_ID_OSOBY) AS Nazwisko_szefa,
(SELECT IMIE FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.TRENER_ID_OSOBY) AS Imie_trenera,
(SELECT NAZWISKO FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.TRENER_ID_OSOBY) AS Nazwisko_trenera
FROM KLUB;

INSERT INTO STADION(ID_STADIONU , KLUB_ID_KLUBU , LOKALIZACJA , NAZWA) 
VALUES(STADION_SEQ.NEXTVAL, '&Id_Klubu_Do_Ktorego_Nalezy', '&Podaj_Lokalizacje', '&Podaj_Nazwe_Stadionu');