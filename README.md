# OracleDataBaseProject

Dokumentacja do Projektu z Przedmiotu Bazy Danych
	
	1. 	Założenia

		- MECZ rozgrywają dwie DRUŻYNY w obecności trzech SĘDZIÓW na STADIONIE, 
		- Jedna DRUŻYNA należy do jednego KLUBU, 
		- W KLUBIE grają ZAWODNICY, STADIONY należą do KLUBÓW, 
		- DRUŻYNA składa się z wybranych ZAWODNIKÓW KLUBU, 
		- nie wszyscy ZAWODNICY KLUBU wytypowani do DRUŻYNY grają w danym meczu, 
		- w czasie meczu występują ZDARZENIA
		
			- gol,
			- out,
			- rzut rożny, 
			- rzut karny,
			- rzut wolny
			- kartka żółta,
			- kartka czerwona, 
			- zmiana zawodników,
			- faul,
		
		- O części zdarzeń decydują SĘDZIOWIE.
		
	2.	Opis funkcjonalności Bazy Danych
	
		Baza Składa się z 11 encji:
		
		- TYP_ZDARZENIA 	- Zawiera nazwę typu zdarzenia oraz odpowiadające jej ID		
		- KLASA_SEDZIEGO 	- Zawiera nazwę klasy oraz odpowiadające jej ID		
		- SEDZIA_MECZ 		- Zawiera powiązanie osoby z rolą sedziego i jego klasy		
		- STADION 			- Zawiera nazwę stadionu, lokalizację, oraz ID			
		- DRUZYNA 			- Zawiera nazwę druzyny oraz ID		
		- POZYCJA 			- Zawiera nazwę pozycji zawodnika w meczu oraz odpowiadające jej ID
		- OSOBA 			- Zawiera dane o osobach, id, imię, nazwisko, datę i miejsce urodzenia, narodowość oraz		
			
		- MECZ			
			Jest w relacji z encjami: STADION, ZDARZENIE, SEDZIA_MECZ, ZAWODNIK_MECZ, DRUZYNA		
			Posiada atrybuty ID_MECZU, DATA_MECZU, CZAS_MECZU	
			Oraz Klucze obce z informacją o Trzech Sedziach w meczu, druzynach, oraz Stadionie
					
		- KLUB		
			Jest w relacji z encjami OSOBA, STADION, DRUZYNA		
			Posiada atrybuty ID_KLUBU, NAZWA, DATA_ZALOZENIA		
			Oraz klucze obce z informacją o Szefie Klubu i Trenerze
							
		- ZAWODNIK_MECZ	
			Łączy osobę z drużyną, meczem i pozycją w danym meczu poprzez klucze obce
			Jest w relacji z encjami OSOBA, POZYCJA, DRUZYNA, MECZ
			
		- ZDARZENIE	
			Łączy typ zdarzenia z meczem, sędzią, osobą (osobami)
			Jest w relacji z encjami MECZ, SEDZIA_MECZ, TYP_ZDARZENIA, OSOBA
			Posiada atrybuty ID_ZDARZENIA, CZAS_MECZU
			Oraz klucze Obce encji, z którymi jest w relacji
			
			
		Na potrzeby obsługi bazy danych zostały stworzone odpowiednie skrypty w języku PL/SQL
		
		- Skrypty tworzące i usuwające elementy bazy oraz wstawiające dane do tabel bazy.
		
		- 4 Zapytania
		
			- Wyświetlające informacje o golach w meczu o podanym id - Kto strzelił, w jakim czasie
			- Wyświetlające dane zawodników w meczu o podanym id
			- Wyświetlające zdarzenia jakie miały miejsce w meczu o podanym id
			- Wyświetlające skład sędziowski w meczu o podanym id
			
		- 4 Widoki
		
			- Zawiera ranking zawodników pod względem ilości strzelonych bramek we wszystkich meczach
			- Zawiera informacje o stadionach i ilości meczy jaka na nich została rozegrana
			- Zawiera informacje o wszystkich sędziach i ilości meczy w jakich brali udział
			- Zawiera informacje o wszystkich klubach
						
		- 4 Funkcje
		
			- Zwraca ilość kartek jaka została pokazana ogółem w meczu o podanym id jako argument
			- Zwraca średni wiek zawodników w klubie o podanym id jako argument
			- Zwraca wynik nazwy grajacych klubow i wynik meczu o podanym id
			- Zwraca procent udziału zdarzenia wobec wszystkich pozostałch zdarzeń w meczu o podanym id
			
		- 2 Wyzwalacze
		
			- Sprawdza możliwość dodania zawodnikowi Kartki (Zółtej lub Czerwonej) w danym meczu
			- Wstawia historię zmian na tabeli OSOBA do tabeli OSOBA_LOG wraz z datą zmiany
			
			
	3.	Interfejs
		
		Dostęp do bazy został zrealizowany z użyciem konsoli i skryptów odpowiedzialnych za obsługę interfejsu.
		Aby uzyskac dostęp do bazy należy się zalogować.
		Dodana została możliwość wyświetlania w konsoli dłuższych wierszy oraz obsługa wyświetlania znaków diakrytycznych.

		
