--------------------------------------------------------------------------------
-------- 2 - ZAPYTANIE WYSWIETLA DANE ZAWODNIKOW W MECZU O PODANYM ID ----------
--------------------------------------------------------------------------------
SELECT
ID_MECZU, 
DATA_MECZU, 
CZAS_MECZU,
(SELECT KLUB.NAZWA FROM DRUZYNA join klub on KLUB.ID_KLUBU = DRUZYNA.KLUB_ID_KLUBU WHERE MECZ.DRUZYNA_ID_DRUZYNY_1 = DRUZYNA.ID_DRUZYNY ) as KLUB_1,
(SELECT KLUB.NAZWA FROM DRUZYNA join klub on KLUB.ID_KLUBU = DRUZYNA.KLUB_ID_KLUBU WHERE MECZ.DRUZYNA_ID_DRUZYNY_2 = DRUZYNA.ID_DRUZYNY ) as KLUB_2,
(SELECT STADION.NAZWA FROM STADION WHERE MECZ.STADION_ID_STADIONU = STADION.ID_STADIONU) as STADION,
(SELECT STADION.LOKALIZACJA FROM STADION WHERE MECZ.STADION_ID_STADIONU = STADION.ID_STADIONU) as LOKALIZACJA
FROM MECZ;

SELECT DISTINCT
  OSOBA.NAZWISKO,
  OSOBA.IMIE, 
  (
    SELECT TRUNC
      (MONTHS_BETWEEN(sysdate, OSOBA.DATA_URODZENIA)/12) 
    FROM DUAL
  ) 
  AS WIEK, 
  KLUB.NAZWA AS KLUB
FROM OSOBA
  JOIN ZAWODNIK_MECZ
    ON ZAWODNIK_MECZ.ZAWODNIK_ID_OSOBY = OSOBA.ID_OSOBY
  JOIN DRUZYNA
    ON DRUZYNA.ID_DRUZYNY = ZAWODNIK_MECZ.DRUZYNA_ID_DRUZYNY
  JOIN KLUB
    ON KLUB.ID_KLUBU = DRUZYNA.KLUB_ID_KLUBU
WHERE ZAWODNIK_MECZ.MECZ_ID_MECZU = &Podaj_Id_Meczu
ORDER BY NAZWISKO;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------