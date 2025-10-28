drop table if exists "informix".servnumeqv ;
create table "informix".servnumeqv 
  (
    srvctypecode char(4) not null ,
    srvctypecode_eqv char(4) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

