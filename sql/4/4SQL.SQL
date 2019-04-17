--------------------------------------------------------------------------------
----------------- 4 - WIDOK INFORMACJI O WSZYSTKICH KLUBACH --------------------
--------------------------------------------------------------------------------
CREATE OR REPLACE VIEW KLUBY_INFO AS
SELECT NAZWA AS Nazwa,
DATA_ZALOZENIA AS Data_zalozenia,
(SELECT IMIE FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.SZEF_ID_OSOBY) AS Imie_szefa,
(SELECT NAZWISKO FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.SZEF_ID_OSOBY) AS Nazwisko_szefa,
(SELECT IMIE FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.TRENER_ID_OSOBY) AS Imie_trenera,
(SELECT NAZWISKO FROM OSOBA WHERE OSOBA.ID_OSOBY = KLUB.TRENER_ID_OSOBY) AS Nazwisko_trenera
FROM KLUB;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------