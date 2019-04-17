$CLS
PROMPT  _____________________________________________________________
PROMPT 	|                                                           |
PROMPT 	|                Wybierz Widok Do Utworzenia                |
PROMPT 	|___________________________________________________________|
PROMPT 
PROMPT _____________________________________________________________
PROMPT 	
PROMPT 1. Widok Ogolnej Ilosci Goli Zawodnikow
PROMPT 2. Widok Informacji o Stadionach Wraz Z Liczba Meczy
PROMPT 3. Widok Informacji o Wszystkich Sedziach
PROMPT 4. Widok Informacji o Klubach
PROMPT _____________________________________________________________
PROMPT 
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT 'Wybierz Numer Widoku: '
$CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.SQL'
PAUSE
@main.sql