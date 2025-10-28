drop table if exists "informix".store ;
create table "informix".store 
  (
    store_id serial not null ,
    key char(20) not null ,
    key_type integer not null ,
    version integer 
        default 1 not null ,
    store char(240) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

