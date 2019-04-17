SET SERVEROUTPUT ON
BEGIN
  DBMS_OUTPUT.PUT_LINE
  (
    'Wskazowka!   Date Urodzenia podaj w formacie RRRR-MM-DD'
  );  
END;
/
SET SERVEROUTPUT OFF
INSERT INTO OSOBA(ID_OSOBY, IMIE, NAZWISKO, DATA_URODZENIA, MIEJSCE_URODZENIA, NARODOWOSC) 
VALUES(OSOBA_SEQ.NEXTVAL, '&Podaj_Imie', '&Podaj_Nazwisko', TO_DATE('&Podaj_Date_Urodzenia','YY/MM/DD'), '&Podaj_Miejsce_Urodzenia', '&Podaj_Narodowosc');