drop table if exists "informix".roles ;
create table "informix".roles 
  (
    role_id serial not null ,
    role_narr varchar(32) not null ,
    operator_role char(1) 
        default 'Y' not null ,
    note lvarchar(2000),
    system_config char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (operator_role IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (system_config IN ('Y' ,'N' )) constraint "informix".yes_no
  );

