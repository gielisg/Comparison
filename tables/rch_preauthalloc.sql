drop table if exists "informix".rch_preauthalloc ;
create table "informix".rch_preauthalloc 
  (
    preauth_alloc_id serial not null ,
    pre_auth_id integer not null ,
    rechrg_id integer not null ,
    element_id integer,
    alloc_value decimal(16,2) 
        default 0.00 not null ,
    open_alloc_value decimal(16,2) 
        default 0.00 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

