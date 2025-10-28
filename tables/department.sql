drop table if exists "informix".department ;
create table "informix".department 
  (
    dept_code char(3) not null ,
    dept_narr char(32) not null ,
    operator_dept char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (operator_dept IN ('Y' ,'N' )) constraint "informix".yes_no
  );

