--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE OSOBA_LOG
(
  ID_LOG            INTEGER NOT NULL ,
  DATA_ZMIANY       DATE,
  ID_OSOBY          INTEGER NOT NULL ,
  IMIE              VARCHAR2 (35) NOT NULL ,
  NAZWISKO          VARCHAR2 (20) NOT NULL ,
  DATA_URODZENIA    DATE NOT NULL ,
  MIEJSCE_URODZENIA VARCHAR2 (25) NOT NULL ,
  NARODOWOSC        VARCHAR2 (30) NOT NULL
) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE DRUZYNA
(
  ID_DRUZYNY    INTEGER NOT NULL ,
  NAZWA         VARCHAR2 (30) NOT NULL ,
  KLUB_ID_KLUBU INTEGER NOT NULL
) ;
  
ALTER TABLE DRUZYNA 
ADD CONSTRAINT DRUZYNA_PK 
PRIMARY KEY ( ID_DRUZYNY ) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE KLASA_SEDZIEGO
(
  ID_KLASY    INTEGER NOT NULL ,
  NAZWA_KLASY VARCHAR2 (20) NOT NULL
) ;
  
ALTER TABLE KLASA_SEDZIEGO 
ADD CONSTRAINT KLASA_SEDZIEGO_PK 
PRIMARY KEY ( ID_KLASY ) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE KLUB
(
  ID_KLUBU        INTEGER NOT NULL ,
  NAZWA           VARCHAR2 (30) NOT NULL ,
  DATA_ZALOZENIA  DATE NOT NULL ,
  SZEF_ID_OSOBY   INTEGER NOT NULL ,
  TRENER_ID_OSOBY INTEGER NOT NULL
) ;
  
ALTER TABLE KLUB 
ADD CONSTRAINT KLUB_PK 
PRIMARY KEY ( ID_KLUBU ) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE MECZ
(
  ID_MECZU                      INTEGER NOT NULL ,
  DATA_MECZU                    DATE NOT NULL ,
  CZAS_MECZU                    VARCHAR2(6) NOT NULL ,
  DRUZYNA_ID_DRUZYNY_1          INTEGER NOT NULL ,
  DRUZYNA_ID_DRUZYNY_2          INTEGER NOT NULL ,
  STADION_ID_STADIONU           INTEGER NOT NULL ,
  SEDZIA_MECZ_ID_OSOBY_SEDZIA_1 INTEGER NOT NULL ,    
  SEDZIA_MECZ_ID_OSOBY_SEDZIA_2 INTEGER NOT NULL ,
  SEDZIA_MECZ_ID_OSOBY_SEDZIA_3 INTEGER NOT NULL 
) ;
  
ALTER TABLE MECZ 
ADD CONSTRAINT MECZ_PK 
PRIMARY KEY ( ID_MECZU ) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE OSOBA
(
  ID_OSOBY          INTEGER NOT NULL ,
  IMIE              VARCHAR2 (35) NOT NULL ,
  NAZWISKO          VARCHAR2 (20) NOT NULL ,
  DATA_URODZENIA    DATE NOT NULL ,
  MIEJSCE_URODZENIA VARCHAR2 (22) NOT NULL ,
  NARODOWOSC        VARCHAR2 (30) NOT NULL
) ;
ALTER TABLE OSOBA 
ADD CONSTRAINT OSOBA_PK 
PRIMARY KEY ( ID_OSOBY ) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE POZYCJA
(
  ID_POZYCJI INTEGER NOT NULL ,
  NAZWA      VARCHAR2 (20) NOT NULL
) ;
  
ALTER TABLE POZYCJA 
ADD CONSTRAINT POZYCJA_PK 
PRIMARY KEY ( ID_POZYCJI ) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE SEDZIA_MECZ
(
  ID_SEDZIEGO             INTEGER NOT NULL ,
  OSOBA_ID_OSOBY          INTEGER NOT NULL ,
  KLASA_SEDZIEGO_ID_KLASY INTEGER NOT NULL
) ;
ALTER TABLE SEDZIA_MECZ 
ADD CONSTRAINT SEDZIA_MECZ_PK 
PRIMARY KEY ( ID_SEDZIEGO ) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE STADION
(
  ID_STADIONU   INTEGER NOT NULL ,
  NAZWA         VARCHAR2 (30) NOT NULL ,
  LOKALIZACJA   VARCHAR2 (20) NOT NULL ,
  KLUB_ID_KLUBU INTEGER NOT NULL
) ;

ALTER TABLE STADION 
ADD CONSTRAINT STADION_PK 
PRIMARY KEY ( ID_STADIONU ) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE TYP_ZDARZENIA
(
  ID_TYPU INTEGER NOT NULL ,
  NAZWA   VARCHAR2 (20) NOT NULL
) ;
  
ALTER TABLE TYP_ZDARZENIA 
ADD CONSTRAINT TYP_ZDARZENIA_PK 
PRIMARY KEY ( ID_TYPU ) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE ZAWODNIK_MECZ
(
  MECZ_ID_MECZU      INTEGER NOT NULL ,
  POZYCJA_ID_POZYCJI INTEGER NOT NULL ,
  ZAWODNIK_ID_OSOBY  INTEGER NOT NULL,
  DRUZYNA_ID_DRUZYNY INTEGER NOT NULL
) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE ZDARZENIE
(
  ID_ZDARZENIA            INTEGER NOT NULL ,
  TYP_ZDARZENIA_ID_TYPU   INTEGER NOT NULL ,
  CZAS                    VARCHAR(6) NOT NULL ,
  ZAWODNIK_1_ID_OSOBY     INTEGER NOT NULL ,
  ZAWODNIK_2_ID_OSOBY     INTEGER ,
  MECZ_ID_MECZU           INTEGER NOT NULL ,
  SEDZIA_MECZ_ID_SEDZIEGO INTEGER NOT NULL
) ;
  
ALTER TABLE ZDARZENIE 
ADD CONSTRAINT ZDARZENIE_PK 
PRIMARY KEY ( ID_ZDARZENIA ) ;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

ALTER TABLE DRUZYNA 
ADD CONSTRAINT DRUZYNA_KLUB_FK 
FOREIGN KEY ( KLUB_ID_KLUBU ) 
REFERENCES KLUB ( ID_KLUBU ) ;

ALTER TABLE KLUB 
ADD CONSTRAINT KLUB_OSOBA_FK 
FOREIGN KEY ( SZEF_ID_OSOBY ) 
REFERENCES OSOBA ( ID_OSOBY ) ;

ALTER TABLE KLUB 
ADD CONSTRAINT KLUB_OSOBA_FKv1 
FOREIGN KEY ( TRENER_ID_OSOBY ) 
REFERENCES OSOBA ( ID_OSOBY ) ;

ALTER TABLE MECZ 
ADD CONSTRAINT MECZ_DRUZYNA_FK 
FOREIGN KEY ( DRUZYNA_ID_DRUZYNY_1 ) 
REFERENCES DRUZYNA ( ID_DRUZYNY ) ;

ALTER TABLE MECZ 
ADD CONSTRAINT MECZ_DRUZYNA_FKv1 
FOREIGN KEY ( DRUZYNA_ID_DRUZYNY_2 ) 
REFERENCES DRUZYNA ( ID_DRUZYNY ) ;

ALTER TABLE MECZ 
ADD CONSTRAINT MECZ_SEDZIA_MECZ_FK 
FOREIGN KEY ( SEDZIA_MECZ_ID_OSOBY_SEDZIA_1 ) 
REFERENCES SEDZIA_MECZ ( ID_SEDZIEGO ) ;

ALTER TABLE MECZ 
ADD CONSTRAINT MECZ_SEDZIA_MECZ_FKv1 
FOREIGN KEY ( SEDZIA_MECZ_ID_OSOBY_SEDZIA_2 ) 
REFERENCES SEDZIA_MECZ ( ID_SEDZIEGO ) ;

ALTER TABLE MECZ 
ADD CONSTRAINT MECZ_SEDZIA_MECZ_FKv2 
FOREIGN KEY ( SEDZIA_MECZ_ID_OSOBY_SEDZIA_3 ) 
REFERENCES SEDZIA_MECZ ( ID_SEDZIEGO ) ;

ALTER TABLE MECZ 
ADD CONSTRAINT MECZ_STADION_FK 
FOREIGN KEY ( STADION_ID_STADIONU ) 
REFERENCES STADION ( ID_STADIONU ) ;

ALTER TABLE SEDZIA_MECZ 
ADD CONSTRAINT SEDZIA_MECZ_KLASA_SEDZIEGO_FK 
FOREIGN KEY ( KLASA_SEDZIEGO_ID_KLASY ) 
REFERENCES KLASA_SEDZIEGO ( ID_KLASY ) ;

ALTER TABLE SEDZIA_MECZ 
ADD CONSTRAINT SEDZIA_MECZ_OSOBA_FK 
FOREIGN KEY ( OSOBA_ID_OSOBY ) 
REFERENCES OSOBA ( ID_OSOBY ) ;

ALTER TABLE STADION 
ADD CONSTRAINT STADION_KLUB_FK 
FOREIGN KEY ( KLUB_ID_KLUBU ) 
REFERENCES KLUB ( ID_KLUBU ) ;

ALTER TABLE ZAWODNIK_MECZ 
ADD CONSTRAINT ZAWODNIK_MECZ_DRUZYNA_FK 
FOREIGN KEY ( DRUZYNA_ID_DRUZYNY ) 
REFERENCES DRUZYNA ( ID_DRUZYNY ) ;

ALTER TABLE ZAWODNIK_MECZ 
ADD CONSTRAINT ZAWODNIK_MECZ_MECZ_FK 
FOREIGN KEY ( MECZ_ID_MECZU ) 
REFERENCES MECZ ( ID_MECZU ) ;

ALTER TABLE ZAWODNIK_MECZ 
ADD CONSTRAINT ZAWODNIK_MECZ_OSOBA_FK 
FOREIGN KEY ( ZAWODNIK_ID_OSOBY ) 
REFERENCES OSOBA ( ID_OSOBY ) ;

ALTER TABLE ZAWODNIK_MECZ 
ADD CONSTRAINT ZAWODNIK_MECZ_POZYCJA_FK 
FOREIGN KEY ( POZYCJA_ID_POZYCJI ) 
REFERENCES POZYCJA ( ID_POZYCJI ) ;

ALTER TABLE ZDARZENIE 
ADD CONSTRAINT ZDARZENIE_MECZ_FK 
FOREIGN KEY ( MECZ_ID_MECZU ) 
REFERENCES MECZ ( ID_MECZU ) ;

ALTER TABLE ZDARZENIE 
ADD CONSTRAINT ZDARZENIE_OSOBA_FK 
FOREIGN KEY ( ZAWODNIK_1_ID_OSOBY ) 
REFERENCES OSOBA ( ID_OSOBY ) ;

ALTER TABLE ZDARZENIE 
ADD CONSTRAINT ZDARZENIE_OSOBA_FKv1 
FOREIGN KEY ( ZAWODNIK_2_ID_OSOBY ) 
REFERENCES OSOBA ( ID_OSOBY ) ;

ALTER TABLE ZDARZENIE 
ADD CONSTRAINT ZDARZENIE_SEDZIA_MECZ_FK 
FOREIGN KEY ( SEDZIA_MECZ_ID_SEDZIEGO ) 
REFERENCES SEDZIA_MECZ ( ID_SEDZIEGO ) ;

ALTER TABLE ZDARZENIE 
ADD CONSTRAINT ZDARZENIE_TYP_ZDARZENIA_FK 
FOREIGN KEY ( TYP_ZDARZENIA_ID_TYPU ) 
REFERENCES TYP_ZDARZENIA ( ID_TYPU ) ;


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------