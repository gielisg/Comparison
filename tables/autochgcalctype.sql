drop table if exists "informix".autochgcalctype ;
create table "informix".autochgcalctype 
  (
    autochgcalctpid char(2) not null ,
    autochgcalcnarr varchar(64) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

