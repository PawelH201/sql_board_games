insert into gatunek(nazwa_gatunek) values('euro');
insert into gatunek(nazwa_gatunek) values('strategiczna');
insert into gatunek(nazwa_gatunek) values('od jednego gracza');
insert into gatunek(nazwa_gatunek) values('fabularna');
insert into autor(imie1,imie2,nazwisko) values('Rainer','','Knizia');
insert into autor(imie1,imie2,nazwisko) values('Krzysztof','','Piskorski');
insert into autor(imie1,imie2,nazwisko) values('Christian','T.','Petersen');
insert into wersja_jezykowa(wersja) values('Polska');
insert into wersja_jezykowa(wersja) values('English');
insert into adres_wysylki(adres) values('Camelot, ulica Joanny 00-007');
insert into adres_wysylki(adres) values('Winterfell, ulica Starych Bogow 98-999');
insert into klient(imie1,imie2,nazwisko,user_name,haslo,numer_telefonu,adres_email,adres_wysylki)
values('Artur','','Camelot','artur','roszada','111222333','ktol_artur@kamelot.royal.uk',1);
insert into klient(imie1,imie2,nazwisko,user_name,haslo,numer_telefonu,adres_email,adres_wysylki)
values('Edwart','','Stark','edward','polnoc_pamieta','444555666','edward@biuronamiestnika.gov.pl',2);
insert into gra_planszowa(nazwa_gra,gatunek1,liczba,autor1,ogr_wiekowe,wersja_jezykowa,ocena_bgg,cena,do_wypozyczenia)
values('Gra o Tron 2. edycja',2,5,3,14,1,7.5,210,false);
insert into gra_planszowa(nazwa_gra,gatunek1,gatunek2,liczba,autor1,ogr_wiekowe,wersja_jezykowa,ocena_bgg,cena,do_wypozyczenia)
values('Tainted grail - Upadek Awalonu',3,4,1,2,14,1,8.1,480,false);
insert into gra_planszowa(nazwa_gra,gatunek1,gatunek2,liczba,autor1,ogr_wiekowe,wersja_jezykowa,ocena_bgg,cena,do_wypozyczenia)
values('Settlers of Catan',1,2,1,1,10,2,7.1,150,true);
insert into gra_planszowa(nazwa_gra,gatunek1,gatunek2,liczba,autor1,ogr_wiekowe,wersja_jezykowa,ocena_bgg,cena,do_wypozyczenia)
values('ISS Vanguard',1,3,0,2,14,2,9.1,600,false);
insert into zakup(gra_planszowa,klient,data,adres_wysylki,liczba) values(1,2,'2024-06-25',2,1);
insert into zakup(gra_planszowa,klient,data,adres_wysylki,liczba) values(2,1,'2024-06-20',1,2);
insert into wypozyczalnia(gra_planszowa,klient,data_wypozyczenia,data_zwrotu) values(3,1,'2024-06-24 10:00:00','2024-06-24 16:00:00');
insert into wypozyczalnia(gra_planszowa,klient,data_wypozyczenia) values(1,2,'2024-06-24 16:00:00');