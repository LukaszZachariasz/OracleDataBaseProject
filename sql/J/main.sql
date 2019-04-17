$CLS
PROMPT  _____________________________________________________________
PROMPT 	|                                                           |
PROMPT 	|               Podaj Instrukcje Do Wykonania               |
PROMPT 	|___________________________________________________________|
PROMPT
PROMPT
ACCEPT INSTRUKCJA CHAR PROMPT '>>>: '
DEFINE CURR_DIR='&1'
@&CURR_DIR/WYKONAJ.SQL '&CURR_DIR' '&INSTRUKCJA'
