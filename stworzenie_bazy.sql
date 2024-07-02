CREATE TABLE gatunek(
	id serial NOT NULL,
	nazwa_gatunek character varying(150) NOT NULL,
	CONSTRAINT id_gatunek PRIMARY KEY (id)
	);

CREATE TABLE autor(
	id serial NOT NULL,
	imie1 character varying(255) NOT NULL,
	imie2 character varying(255),
	nazwisko character varying(255) NOT NULL,
	CONSTRAINT id_autor PRIMARY KEY (id)
	);
	
Create TABLE wersja_jezykowa(
	id serial NOT NULL,
	wersja character varying(255) NOT NULL,
	CONSTRAINT id_wersja_jezykowa PRIMARY KEY (id)
	);

Create TABLE adres_wysylki(
	id serial NOT NULL,
	adres character varying(255) NOT NULL,
	CONSTRAINT id_adres_wysylki PRIMARY KEY (id)
	);


CREATE TABLE klient(
	id serial NOT NULL,
	imie1 character varying(255) NOT NULL,
	imie2 character varying(255),
	nazwisko character varying(255) NOT NULL,
	user_name character varying(255) NOT NULL,
	haslo character varying(255) NOT NULL,
	numer_telefonu integer,
	adres_email character varying(255) NOT NULL,
	adres_wysylki integer,
	CONSTRAINT id_klient PRIMARY KEY (id),
	CONSTRAINT idf_adres_wysylki FOREIGN KEY (adres_wysylki)
		REFERENCES adres_wysylki (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION	
	);
CREATE TABLE gra_planszowa(
	id serial NOT NULL,
  	nazwa_gra character varying(255) NOT NULL,
	gatunek1 integer NOT NULL,
	gatunek2 integer,
	liczba integer,
	autor1 integer NOT NULL,
	autor2 integer,
	ogr_wiekowe integer,
	wersja_jezykowa integer NOT NULL,
	ocena_bgg decimal NOT NULL,
	cena money,
	do_wypozyczenia boolean NOT NULL,
	CONSTRAINT id_gra_planszowa PRIMARY KEY (id),
	 CONSTRAINT idf_gatunek1 FOREIGN KEY (gatunek1)
		REFERENCES gatunek (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT idf_gatunek2 FOREIGN KEY (gatunek2)
		REFERENCES gatunek (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT idf_autor1 FOREIGN KEY (autor1)
		REFERENCES autor (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT idf_autor2 FOREIGN KEY (autor2)
		REFERENCES autor (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT idf_wersja_jezykowa FOREIGN KEY (wersja_jezykowa)
		REFERENCES wersja_jezykowa (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION

);
CREATE TABLE zakup(
	id serial NOT NULL,
	gra_planszowa integer NOT NULL,
	klient int NOT NULL,
	data date NOT NULL,
	adres_wysylki integer NOT NULL,
	liczba int NOT NULL,
	CONSTRAINT id_zakup PRIMARY KEY (id),
	CONSTRAINT idf_gra_planszowa FOREIGN KEY (gra_planszowa)
		REFERENCES gra_planszowa (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT idf_klient FOREIGN KEY (klient)
		REFERENCES klient (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT idf_adres_wysylki FOREIGN KEY (adres_wysylki)
		REFERENCES adres_wysylki (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION
);
CREATE TABLE wypozyczalnia(
	id serial NOT NULL,
	gra_planszowa integer NOT NULL,
	klient int NOT NULL,
	data_wypozyczenia date NOT NULL,
	data_zwrotu date,
	CONSTRAINT id_wypozyczalnia PRIMARY KEY (id),
	CONSTRAINT idf_gra_planszowa FOREIGN KEY (gra_planszowa)
		REFERENCES gra_planszowa (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT idf_klient FOREIGN KEY (klient)
		REFERENCES klient (id) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION
);