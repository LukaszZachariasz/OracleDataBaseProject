--------------------------------------------------------------------------------
------------------ 1 - WIDOK OGOLNEJ ILOSCI GOLI ZAWODNIKOW --------------------
--------------------------------------------------------------------------------
CREATE OR REPLACE VIEW ZAWODNIK_GOLE AS 
SELECT ZAWODNIK_MECZ.ZAWODNIK_ID_OSOBY as ID_OSOBY,
  OSOBA.IMIE AS IMIE,
  OSOBA.NAZWISKO AS NAZWISKO,
  COUNT (ZDARZENIE.TYP_ZDARZENIA_ID_TYPU) AS ILOSC_GOLI 
FROM ZAWODNIK_MECZ
  JOIN ZDARZENIE
    ON ZDARZENIE.ZAWODNIK_1_ID_OSOBY = ZAWODNIK_MECZ.ZAWODNIK_ID_OSOBY
  JOIN OSOBA
    ON OSOBA.ID_OSOBY = ZAWODNIK_MECZ.ZAWODNIK_ID_OSOBY
WHERE ZDARZENIE.TYP_ZDARZENIA_ID_TYPU = 4000
GROUP BY
    ZAWODNIK_MECZ.ZAWODNIK_ID_OSOBY,
    OSOBA.IMIE,
    OSOBA.NAZWISKO
ORDER BY ILOSC_GOLI DESC;
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------