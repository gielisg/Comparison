drop table if exists "informix".autochgcalcambd ;
create table "informix".autochgcalcambd 
  (
    autochgcalcabref serial not null ,
    autochgcalcid integer,
    bandlower decimal(18,2) not null ,
    bandupper decimal(18,2) not null ,
    autochgcalctpid char(2) not null 
  );

