drop table if exists "informix".autochgcalc ;
create table "informix".autochgcalc 
  (
    autochgcalcid serial not null ,
    autochgid integer not null ,
    autochgcalctpid char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

