create view dostepne_gry as
select nazwa_gra as Dostepne_gry, liczba from gra_planszowa
where liczba>0;
select * from dostepne_gry;

create view dostepne_gry_wypozyczenie as
select nazwa_gra as Dostepne_gry from gra_planszowa
where do_wypozyczenia is true
and liczba>0;
select * from dostepne_gry_wypozyczenie;

create view niedostepne_gry as
select nazwa_gra as Niedostepne_gry from gra_planszowa
where liczba = 0 or liczba = NULL;
select * from niedostepne_gry;

--wszystkie gry
create view historia_wypozyczen as
select
k.imie1||' '||k.nazwisko klient,
w.data_wypozyczenia,
w.data_zwrotu,
g.nazwa_gra gra_planszowa
from
wypozyczalnia w join gra_planszowa g
on w.gra_planszowa=g.id
join klient k
on w.klient=k.id;

create view wypozyczone_gry as
select
k.imie1||' '||k.nazwisko klient,
w.data_wypozyczenia,
w.data_zwrotu,
g.nazwa_gra gra_planszowa
from
wypozyczalnia w join gra_planszowa g
on w.gra_planszowa=g.id
join klient k
on w.klient=k.id
where data_zwrotu is null;