$CLS
PROMPT  _____________________________________________________________
PROMPT 	|                                                           |
PROMPT 	|              Wybierz Podprogram Do Wywolania              |
PROMPT 	|___________________________________________________________|
PROMPT 
PROMPT _____________________________________________________________
PROMPT 	
PROMPT 1. Wyswietla Ilosc Kartek W Meczu O Podanym ID
PROMPT 2. Wyswietla Sredni Wiek Zawodnikow W Klubie
PROMPT 3. Wyswietla Wynik w Meczu i Nazwy Grajacych Klubow
PROMPT 4. Wyswietla Procent Udzialu Zdarzenia We Wszystkich W Meczu 
PROMPT _____________________________________________________________
PROMPT 
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT 'Wybierz Numer Podprogramu: '
$CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.SQL'
PAUSE
@main.sql