drop table if exists "informix".dcelchcd ;
create table "informix".dcelchcd 
  (
    disceligid integer not null ,
    chg_code char(4) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

