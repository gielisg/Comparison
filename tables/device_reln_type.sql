drop table if exists "informix".device_reln_type ;
create table "informix".device_reln_type 
  (
    reln_type_id serial not null ,
    reln_type_narr varchar(32) not null ,
    note lvarchar(10000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

