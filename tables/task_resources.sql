drop table if exists "informix".task_resources ;
create table "informix".task_resources 
  (
    contact_code char(10) not null ,
    res_type char(1) not null ,
    active char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (res_type IN ('I' ,'C' ,'E' )) constraint "informix".i_c_e2,
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
  );

