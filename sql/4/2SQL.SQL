--------------------------------------------------------------------------------
----- 2 - WIDOK WYSWIETLA INFORMACJE O STADIONACH I ILOSC ROZEGRANYCH MECZY ----
--------------------------------------------------------------------------------

CREATE OR REPLACE VIEW STADION_INFO AS 
SELECT
  STADION.ID_STADIONU,
  STADION.NAZWA AS NAZWA,
  STADION.LOKALIZACJA,
  KLUB.NAZWA AS NALEZY_DO,
  COUNT (*) AS ILOSC_MECZY,
  NAZWISKO AS NAZWISKO_SZEFA_KLUBU,
  IMIE AS IMIE_SZEFA_KLUBU 
FROM STADION 
  JOIN KLUB
    ON KLUB.ID_KLUBU = STADION.KLUB_ID_KLUBU
  JOIN MECZ
    ON MECZ.STADION_ID_STADIONU = STADION.ID_STADIONU
  JOIN OSOBA
    ON OSOBA.ID_OSOBY = KLUB.SZEF_ID_OSOBY   
GROUP BY 
  STADION.ID_STADIONU,
  STADION.NAZWA,
  STADION.LOKALIZACJA,
  KLUB.NAZWA,
  OSOBA.IMIE,
  OSOBA.NAZWISKO  
ORDER BY ILOSC_MECZY DESC;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------