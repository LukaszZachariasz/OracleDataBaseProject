SELECT
ID_KLUBU AS ID_KLUBU,
NAZWA AS Nazwa,
DATA_ZALOZENIA AS Data_zalozenia,
(SELECT IMIE FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.SZEF_ID_OSOBY) AS Imie_szefa,
(SELECT NAZWISKO FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.SZEF_ID_OSOBY) AS Nazwisko_szefa,
(SELECT IMIE FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.TRENER_ID_OSOBY) AS Imie_trenera,
(SELECT NAZWISKO FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.TRENER_ID_OSOBY) AS Nazwisko_trenera
FROM KLUB;

INSERT INTO DRUZYNA(ID_DRUZYNY , KLUB_ID_KLUBU , NAZWA) 
VALUES(DRUZYNA_SEQ.NEXTVAL, '&Podaj_Id_Klubu_Druzyny', '&Podaj_Nazwe_Druzyny');