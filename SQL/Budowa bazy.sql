select 
s.Nazwa
,s.Sektor
,round(a.sredniaROA,2) as Aktywa
,round(aa.sredniaAKTRWALE,2) as AktywaTrwale
,round(d.sredniaDYWIDENDA,2) as Dywidenda
,round(df.sredniaDZWIGNIA,2) as DzwigniaFinansowa
,round(k.sredniaKAPITAL,2) as KapitalWlasny
,round(p.sredniaPLYNNOSC,2) as Plynnosc
,round(po.sredniaPODATEK,2) as PodatekDochodowy
,round(ra.sredniaROA,2) as ROA
,round(re.sredniaROE,2) as ROE
,round(w.Wzrost,2) as Wzrost
,round(dt.sredniaDlT,2) as ZobowiazaniaDt
,round(dt.sredniaZKT,2) as ZobowiazaniaKt
,round(dt.Struktura,2) as Struktura
,round(dt.zobowiazania_ogolem,2) as ZobowiazaniaOgolem

from Sektory$ as s

left join Aktywa$ as a on s.Nazwa=a.Source#Name#1
left join Aktywa_trwale$ as aa on aa.Source#Name#1=s.Nazwa
left join Dywidenda$ as d on d.Source#Name#1=s.Nazwa
left join Dzwidnia_finansowa$ as df on df.Source#Name#1=s.Nazwa
left join Kapital_wlasny$ as k on k.Source#Name#1=s.Nazwa
left join Plynnosc_biezoca$ as p on p.Source#Name#1=s.Nazwa
left join Podatek$ as po on po.Source#Name#1=s.Nazwa
left join ROA$ as ra on ra.Source#Name#1=s.Nazwa
left join ROE$ as re on re.Source#Name#1=s.Nazwa
left join Wzrost$ as w on w.Source#Name#1=s.Nazwa
left join Zobowiazania_dt$ as dt on dt.Source#Name#1=s.Nazwa