--------------------------------------------------------------------------------
----- 1 - WYZWALACZ SPRAWDZA MOZLIWOSC DODANIA ZAWODNIKOWI KARTKI W MECZU ------
--------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER TGR_KONTROLA_KARTEK
BEFORE INSERT OR UPDATE ON ZDARZENIE FOR EACH ROW

DECLARE

  TMP_ILOSC_KARTEK_Z_ZAW INTEGER := 0;
  TMP_ILOSC_KARTEK_C_ZAW INTEGER := 0;
  
BEGIN
  SELECT 
    COUNT(*) INTO TMP_ILOSC_KARTEK_Z_ZAW
    
  FROM ZDARZENIE
  WHERE ZDARZENIE.TYP_ZDARZENIA_ID_TYPU = 4005
      AND ZAWODNIK_1_ID_OSOBY = :NEW.ZAWODNIK_1_ID_OSOBY
      AND ZDARZENIE.MECZ_ID_MECZU = :NEW.MECZ_ID_MECZU;
      
  SELECT 
    COUNT(*) INTO TMP_ILOSC_KARTEK_C_ZAW
    
  FROM ZDARZENIE
  WHERE ZDARZENIE.TYP_ZDARZENIA_ID_TYPU = 4006
      AND ZAWODNIK_1_ID_OSOBY = :NEW.ZAWODNIK_1_ID_OSOBY
      AND ZDARZENIE.MECZ_ID_MECZU = :NEW.MECZ_ID_MECZU;
  
  IF (TMP_ILOSC_KARTEK_Z_ZAW > 0 AND :NEW.TYP_ZDARZENIA_ID_TYPU = 4005) THEN
  RAISE_APPLICATION_ERROR
  (-20000, 'Temu Zawodnikowi Nie Mozna Juz Dac Zoltej Kartki W Tym Meczu'); 
  END IF;
  
  IF (TMP_ILOSC_KARTEK_C_ZAW > 0 AND :NEW.TYP_ZDARZENIA_ID_TYPU = 4006) THEN
  RAISE_APPLICATION_ERROR
  (-20000, 'Temu Zawodnikowi Nie Mozna Juz Dac Czerwonej Kartki W Tym Meczu'); 
  END IF;

END;
/

--------------------------------------------------------------------------------
----------------- 2 - WYZWALACZ WSTAWIA LOGI ZMIAN DANYCH OSOB  -----------------
--------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER TGR_LOG_OSOBA 
AFTER UPDATE ON OSOBA FOR EACH ROW

BEGIN 
  CASE WHEN UPDATING THEN
  INSERT INTO OSOBA_LOG VALUES
  (
    LOG_SEQ.NEXTVAL,
    SYSDATE,
    :OLD.ID_OSOBY,
    :OLD.IMIE,
    :OLD.NAZWISKO,
    :OLD.DATA_URODZENIA,
    :OLD.MIEJSCE_URODZENIA,
    :OLD.NARODOWOSC
  );
  END CASE;
END;
/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


