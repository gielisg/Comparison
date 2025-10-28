drop table if exists "informix".autochgeligbal ;
create table "informix".autochgeligbal 
  (
    autochgeligid integer not null ,
    minbalance decimal(12,2) not null ,
    maxbalance decimal(12,2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

