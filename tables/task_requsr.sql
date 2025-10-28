drop table if exists "informix".task_requsr ;
create table "informix".task_requsr 
  (
    task_requsr_ref serial not null ,
    contact_code char(10) not null ,
    task_requsr_name varchar(64) not null ,
    task_requsr_disp char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (task_requsr_disp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

