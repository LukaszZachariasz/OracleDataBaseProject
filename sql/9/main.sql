$CLS
PROMPT  _____________________________________________________________
PROMPT 	|                                                           |
PROMPT 	|           Wybierz Tabele Do Ktorej Wstawic Dane           |
PROMPT 	|___________________________________________________________|
PROMPT 
PROMPT _____________________________________________________________
PROMPT 	
PROMPT 1. Wstaw Osobe
PROMPT 2. Wstaw Druzyne
PROMPT 3. Wstaw Stadion 
PROMPT _____________________________________________________________
PROMPT 
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT 'Wybierz Numer Podprogramu: '
$CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.SQL'
PAUSE
@main.sql