$CLS
PROMPT  _____________________________________________________________
PROMPT 	|                                                           |
PROMPT 	|              Wybierz Tabele Do Wyswietlenia               |
PROMPT 	|___________________________________________________________|
PROMPT 
PROMPT _____________________________________________________________
PROMPT 	
PROMPT 1. Logami Zmian Danych Osob		(OSOBA_LOG)
PROMPT 2. Osoby				(OSOBA)
PROMPT 3. Druzyny				(DRUZYNA)
PROMPT 4. Klasy Sedziow			(KLASA_SEDZIEGO)
PROMPT 5. Kluby				(KLUB)
PROMPT 6. Mecze				(MECZ)
PROMPT 7. Pozycje Zawodnikow			(POZYCJA)
PROMPT 8. Sedziowie				(SEDZIA_MECZ)
PROMPT 9. Stadiony				(STADION)
PROMPT A. Typy Zdarzen				(TYP_ZDARZENIA)
PROMPT B. Zawodnicy w meczach			(ZAWODNIK_MECZ)
PROMPT C. Zdarzenia w meczach			(ZDARZENIE)
PROMPT _____________________________________________________________
PROMPT 
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT 'Wybierz Numer Tabeli: '
$CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.SQL'
PAUSE
@main.sql