$CLS
SET LINESIZE 200
PROMPT  _____________________________________________________________
PROMPT 	|                                                           |
PROMPT 	|           Witaj W Bazie Danych Rozgrywek Ligowych         |
PROMPT 	|              Wybierz Instrukcje Do Wykonania              |
PROMPT 	|___________________________________________________________| 
PROMPT 
PROMPT 	________________________Wszystko____________________________ 
PROMPT 	1. Utworz Wszystko i Wstaw Dane
PROMPT 	2. Usun Wszystko
PROMPT 	________________________Tworzenie___________________________
PROMPT 	3. Utworz Tabele 		(CREATE TABLEs)
PROMPT 	4. Utworz Widoki		(CREATE VIEWs)
PROMPT 	5. Utworz Sekwencje 		(CREATE SEQUENCEs)
PROMPT 	6. Utworz Podprogramy 		(CREATE PROCEDUREs/FUNCTIONs)
PROMPT 	7. Utworz Wyzwalacze		(CREATE TRIGGERs)
PROMPT 
PROMPT 	________________________Wstawianie__________________________
PROMPT 	8. Wstaw Gotowe Dane Do Tabel 	(INSERT INTO TABLEs)
PROMPT	9. Wstaw Wlasne Dane do Tabel	(INSERT INTO OSOBA)
PROMPT 
PROMPT 	_________________________Usuwanie___________________________
PROMPT 	A. Usun Tabele			(DROP TABLEs)
PROMPT 	B. Usun Sekwencje		(DROP SEQUENCEs)
PROMPT 	C. Usun Podprogramy		(DROP PROCEDUREs/FUNCTIONs)
PROMPT 	D. Usun Widoki			(DROP VIEWs)
PROMPT 	E. Usun Wyzwalacze		(DROP TRIGGERs)
PROMPT 
PROMPT 	_______________________Wykonywanie__________________________
PROMPT 	F. Wykonaj Podprogram		(EXECUTE PROCEDURE/FUNCTION)
PROMPT 	G. Wykonaj Zapytanie		(SELECT ...)
PROMPT 
PROMPT 	_______________________Wyswietlanie_________________________
PROMPT 	H. Pokaz Dane Z Widoku		(SELECT FROM VIEW)
PROMPT 	I. Pokaz Dane Z Tabeli		(SELECT FROM TABLE)
PROMPT 
PROMPT 	________________________Pozostale___________________________
PROMPT 	J. Dowolna instrukcja
PROMPT 	0. Wyjscie Z Bazy Danych
PROMPT	____________________________________________________________

ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT 'Wybierz Numer Instrukcji (0-I): '
$CLS
PROMPT wybor = &wybor
@&wybor\main.sql &wybor
PROMPT 
PROMPT # Wcisnij ENTER #
PAUSE
@main.sql