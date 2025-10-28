drop table if exists "informix".cba_reason ;
create table "informix".cba_reason 
  (
    cba_reason_id serial not null ,
    cba_reason_narr varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

