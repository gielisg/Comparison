drop table if exists "informix".autochgeligaddf ;
create table "informix".autochgeligaddf 
  (
    autochgeligid integer not null ,
    table_name char(18) not null ,
    info_type char(1) not null ,
    information varchar(254) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

