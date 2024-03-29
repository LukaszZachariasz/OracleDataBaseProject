--------------------------------------------------------------------------------
--------- 1 - FUNKCJA ZWRACA ILOSC KARTEK W MECZU O ID Z ARGUMENTU -------------
--------------------------------------------------------------------------------
SET SERVEROUTPUT ON
CREATE OR REPLACE FUNCTION FUN_MECZ_ILOSC_KARTEK(ID_M IN INTEGER) 
RETURN INTEGER IS

  I_ILOSC_KARTEK INTEGER := 0 ;

CURSOR CUR_MECZ_ILOSC_KARTEK IS
  
  SELECT DISTINCT
  
    COUNT (*) AS ILOSC_KARTEK INTO I_ILOSC_KARTEK
    
  FROM ZDARZENIE
  
    JOIN TYP_ZDARZENIA 
      ON ZDARZENIE.TYP_ZDARZENIA_ID_TYPU = TYP_ZDARZENIA.ID_TYPU
  
  WHERE (ZDARZENIE.TYP_ZDARZENIA_ID_TYPU = 4005 
      OR ZDARZENIE.TYP_ZDARZENIA_ID_TYPU = 4006)
     AND ZDARZENIE.MECZ_ID_MECZU = ID_M
  
  ORDER BY ILOSC_KARTEK DESC;
    
BEGIN
  OPEN CUR_MECZ_ILOSC_KARTEK;
    FETCH CUR_MECZ_ILOSC_KARTEK INTO I_ILOSC_KARTEK;   
  CLOSE CUR_MECZ_ILOSC_KARTEK;
  RETURN (I_ILOSC_KARTEK);
END;
/
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
SET SERVEROUTPUT ON

SELECT
ID_MECZU, 
DATA_MECZU, 
CZAS_MECZU,
(SELECT KLUB.NAZWA FROM DRUZYNA join klub on KLUB.ID_KLUBU = DRUZYNA.KLUB_ID_KLUBU WHERE MECZ.DRUZYNA_ID_DRUZYNY_1 = DRUZYNA.ID_DRUZYNY ) as KLUB_1,
(SELECT KLUB.NAZWA FROM DRUZYNA join klub on KLUB.ID_KLUBU = DRUZYNA.KLUB_ID_KLUBU WHERE MECZ.DRUZYNA_ID_DRUZYNY_2 = DRUZYNA.ID_DRUZYNY ) as KLUB_2,
(SELECT STADION.NAZWA FROM STADION WHERE MECZ.STADION_ID_STADIONU = STADION.ID_STADIONU) as STADION,
(SELECT STADION.LOKALIZACJA FROM STADION WHERE MECZ.STADION_ID_STADIONU = STADION.ID_STADIONU) as LOKALIZACJA
FROM MECZ;

BEGIN
	
  DBMS_OUTPUT.PUT_LINE
  ('Ilosc Kartek: ' || FUN_MECZ_ILOSC_KARTEK(&Podaj_Id_Meczu));

END;
/