drop table if exists "informix".cba_status ;
create table "informix".cba_status 
  (
    cba_status_id serial not null ,
    cba_status_narr varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

