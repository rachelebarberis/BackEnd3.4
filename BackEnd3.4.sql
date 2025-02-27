USE esercizio4;

CREATE TABLE Impiego (
    IDImpiego INT IDENTITY (1,1) PRIMARY KEY,
    TipoImpiego NVARCHAR(50) NOT NULL,
    Assunzione DATE NOT NULL,

);


CREATE TABLE Impiegato (
    IDImpiegato INT IDENTITY (1,1) PRIMARY KEY,
    Cognome NVARCHAR(50) NOT NULL,
    Nome NVARCHAR(50) NOT NULL,
    CodiceFiscale VARCHAR(16) NOT NULL UNIQUE,
    Eta INT NOT NULL,
    RedditoMensile DECIMAL(10,2),
    DetrazioneFiscale NVARCHAR(2),
	IDImpiego INT NOT NULL,
	CONSTRAINT FK_Impiego_Impiegato FOREIGN KEY (IDImpiegO) REFERENCES Impiego(IDImpiego),
	CONSTRAINT CK_Eta CHECK (Eta>0),
	CONSTRAINT CK_DetrazioneFiscale CHECK (DetrazioneFiscale IN('SI', 'NO'))
);

INSERT INTO Impiegato (Cognome, Nome, CodiceFiscale, Eta, RedditoMensile, DetrazioneFiscale, IDImpiego) VALUES
('Rossi', 'Mario', 'RSSMRA80A01H501Z', 35, 2500.00, 'SI', 1),
('Bianchi', 'Luigi', 'BNCLGU82B02F205T', 42, 2800.00, 'NO', 2),
('Verdi', 'Anna', 'VRDANN85C03L219G', 30, 2600.00, 'NO',3),
('Neri', 'Laura', 'NRILRA90D04M220J', 29, 2400.00, 'SI',4),
('Gialli', 'Marco', 'GLLMRC88E05N221K', 33, 2700.00, 'SI',5),
('Blu', 'Sara', 'BLUSRA91F06O222L', 31, 2550.00, 'NO',6),
('Viola', 'Paolo', 'VLOPLA79G07P223M', 45, 2900.00, 'NO',7),
('Arancio', 'Elisa', 'ARCELI86H08Q224N', 38, 2650.00, 'SI',8),
('Marrone', 'Giorgio', 'MRRGIO83I09R225O', 36, 2750.00, 'SI',9),
('Rosa', 'Claudia', 'RSOCLA92J10S226P', 27, 2300.00, 'SI',10),
('Azzurro', 'Dario', 'AZZDAR87K11T227Q', 34, 2850.00, 'NO',11),
('Grigio', 'Monica', 'GRGMON81L12U228R', 40, 2950.00, 'SI',12),
('Celeste', 'Luca', 'CLSLUC93M13V229S', 26, 2200.00, 'SI',13),
('Indaco', 'Marta', 'INDMRT78N14W230T', 50, 3100.00, 'NO',14),
('Beige', 'Andrea', 'BEIAND89O15X231U', 32, 2800.00, 'NO',15),
('Turchese', 'Sofia', 'TURSOF94P16Y232V', 25, 2100.00, 'SI',16),
('Fucsia', 'Matteo', 'FUCMTT95Q17Z233W', 28, 2250.00, 'SI',17),
('Corallo', 'Giulia', 'CORGIU96R18A234X', 24, 2000.00, 'NO',18),
('Porpora', 'Stefano', 'PORSTE97S19B235Y', 29, 2350.00, 'NO',19),
('Ocra', 'Valentina', 'OCRVAL98T20C236Z', 23, 1950.00, 'NO',20);

INSERT INTO Impiego (TipoImpiego, Assunzione) VALUES
('Manager', '2024-10-23'),
('Analista', '2023-09-15'),
('Sviluppatore', '2022-08-10'),
('Tecnico', '2021-07-05'),
('Designer', '2020-06-20'),
('Contabile', '2019-05-12'),
('Direttore', '2018-04-25'),
('HR', '2017-03-18' ),
('Supporto IT', '2016-02-07' ),
('Marketing', '2015-01-30' ),
('Vendite', '2014-12-10' ),
('Amministrativo', '2013-11-05' ),
('Logistica', '2012-10-02' ),
('Ricerca', '2011-09-21' ),
('Progettista', '2010-08-15' ),
('Consulente', '2009-07-10' ),
('Sicurezza', '2008-06-05' ),
('Gestione', '2007-05-01' ),
('Manutenzione', '2006-04-20' ),
('Operaio', '2005-03-15' );

SELECT * FROM Impiegato;
SELECT * FROM Impiego;


SELECT * FROM Impiegato WHERE Eta>29;
SELECT * FROM Impiegato WHERE RedditoMensile>=800;
SELECT * FROM Impiegato WHERE DetrazioneFiscale='SI';
SELECT * FROM Impiegato WHERE DetrazioneFiscale='NO';
SELECT * FROM Impiegato WHERE Cognome LIKE 'G%' ORDER BY Cognome;
SELECT COUNT(*) AS TotImpiegati FROM Impiegato;
SELECT SUM(RedditoMensile) AS ReddMensileTot FROM Impiegato;
SELECT AVG(RedditoMensile) AS ReddMensileMedio FROM Impiegato;
SELECT MAX(RedditoMensile) AS ReddMensileMedio FROM Impiegato;
SELECT MIN(RedditoMensile) AS ReddMensileMedio FROM Impiegato;
SELECT * FROM Impiego WHERE Assunzione BETWEEN '2007-01-01' AND '2008-01-01';
SELECT AVG(Eta) AS EtaMediaLavoratori FROM Impiegato;
