drop table if exists "informix".autochgcalcamnt ;
create table "informix".autochgcalcamnt 
  (
    autochgcalcid integer not null ,
    autochgcalcamnt decimal(18,10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

