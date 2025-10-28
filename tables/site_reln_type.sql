drop table if exists "informix".site_reln_type ;
create table "informix".site_reln_type 
  (
    site_rntype_id serial not null ,
    site_rntype_narr varchar(50) not null ,
    note lvarchar(10000),
    parent char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (parent IN ('Y' ,'N' )) constraint "informix".yes_no
  );

