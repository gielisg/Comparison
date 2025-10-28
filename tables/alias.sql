drop table if exists "informix".alias ;
create table "informix".alias 
  (
    alias_id serial not null ,
    alias_type char(2) not null ,
    contact_code char(10) not null ,
    alias_name varchar(254,32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

