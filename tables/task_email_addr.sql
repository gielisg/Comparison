drop table if exists "informix".task_email_addr ;
create table "informix".task_email_addr 
  (
    task_emailad_ref serial not null ,
    contact_code char(10) not null ,
    task_email_addr varchar(254) not null ,
    task_email_disp char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (task_email_disp IN ('Y' ,'N' )) constraint "informix".yes_no
  );

