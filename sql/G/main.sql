$CLS
PROMPT  _____________________________________________________________
PROMPT 	|                                                           |
PROMPT 	|             Wybierz Zapytanie Do Bazy Danych              |
PROMPT 	|___________________________________________________________|
PROMPT 
PROMPT _____________________________________________________________
PROMPT 	
PROMPT 1. Wyswietla Informacje O Golach W Meczu O Podanym ID
PROMPT 2. Wyswietla Dane Zawodnikow W Meczu O Podanym ID
PROMPT 3. Wyswietla Zdarzenia W Meczu O Podanym ID
PROMPT 4. Wyswietla Sklad Sedziowski W Meczu O Podanym ID  
PROMPT _____________________________________________________________
PROMPT 
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT 'Wybierz Numer Zapytania: '
$CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.SQL'
PAUSE
@main.sql