$CLS
PROMPT  _____________________________________________________________
PROMPT 	|                                                           |
PROMPT 	|              Wybierz Widok Do Wyswietlenia                |
PROMPT 	|___________________________________________________________|
PROMPT 
PROMPT _____________________________________________________________
PROMPT 	
PROMPT 1. Wyswietla Widok Ilosci Goli Zawodnikow
PROMPT 2. Wyswietla Widok Informacji O Stadionach I Ilosci Meczy
PROMPT 3. Wyswietla Widok Informacji O Wszystkich Sedziach 
PROMPT 4. Wyswietla Widok Informacji O Wszystkich Klubach 
PROMPT _____________________________________________________________
PROMPT 
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT 'Wybierz Numer Widoku: '
$CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.SQL'
PAUSE
@main.sql