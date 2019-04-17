--------------------------------------------------------------------------------
------------ 2 - FUNKCJA ZWRACA SREDNI WIEK ZAWODNIKOW W KLUBIE ----------------
--------------------------------------------------------------------------------
SET SERVEROUTPUT ON
CREATE OR REPLACE FUNCTION FUN_AVG_WIEKU_ZAW_KLUBU (ID_K IN INTEGER) 
RETURN INTEGER IS

  TMP_WIEK INTEGER := 0.0 ;
  TMP_SUMA INTEGER := 0;
  TMP_ID_ZAW INTEGER := 0;
  TMP_LICZNIK INTEGER := 0;

CURSOR CUR_WIEK_ZAW_KLUBU IS
  
  SELECT DISTINCT
    ZAWODNIK_MECZ.ZAWODNIK_ID_OSOBY,
    TRUNC(MONTHS_BETWEEN(sysdate, OSOBA.DATA_URODZENIA)/12) AS WIEK

  FROM OSOBA

    JOIN ZAWODNIK_MECZ
      ON ZAWODNIK_MECZ.ZAWODNIK_ID_OSOBY = OSOBA.ID_OSOBY
    JOIN DRUZYNA
      ON DRUZYNA.ID_DRUZYNY = ZAWODNIK_MECZ.DRUZYNA_ID_DRUZYNY

  WHERE DRUZYNA.KLUB_ID_KLUBU = ID_K

  ORDER BY WIEK DESC;

BEGIN
  OPEN CUR_WIEK_ZAW_KLUBU;
  LOOP
    FETCH CUR_WIEK_ZAW_KLUBU INTO TMP_ID_ZAW, TMP_WIEK;
    EXIT WHEN (CUR_WIEK_ZAW_KLUBU%NOTFOUND);
    TMP_SUMA := TMP_SUMA + TMP_WIEK;
    TMP_LICZNIK := TMP_LICZNIK + 1;
  END LOOP;
  CLOSE CUR_WIEK_ZAW_KLUBU;
  RETURN (TMP_SUMA/TMP_LICZNIK);
END;
/
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

SELECT ID_KLUBU, NAZWA, DATA_ZALOZENIA FROM KLUB;
SET SERVEROUTPUT ON
BEGIN

  DBMS_OUTPUT.PUT_LINE
  ('Srednia Wieku Zawodnikow W Tym Klubie To ' || 
  FUN_AVG_WIEKU_ZAW_KLUBU(&Podaj_Id_Klubu) || ' Lat');

END;
/