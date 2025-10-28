drop table if exists "informix".autochgeligbc ;
create table "informix".autochgeligbc 
  (
    autochgeligid integer not null ,
    cycle_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

