drop table if exists "informix".autochgcalccnt ;
create table "informix".autochgcalccnt 
  (
    autochgcalcid integer not null ,
    initblckcnt integer not null ,
    initblckcost decimal(12,6) not null ,
    ongoblckcnt integer not null ,
    ongoblckcost decimal(12,6) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

