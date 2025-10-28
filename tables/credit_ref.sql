drop table if exists "informix".credit_ref ;
create table "informix".credit_ref 
  (
    credit_ref serial not null ,
    prov_code char(2) not null ,
    prov_name varchar(32) not null ,
    order integer 
        default 3 not null ,
    cfg_table char(18) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

