drop table if exists "informix".cba_glar ;
create table "informix".cba_glar 
  (
    cba_tranid integer not null ,
    cba_glarcomp char(10),
    cba_glartran char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

