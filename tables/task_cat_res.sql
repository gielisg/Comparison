drop table if exists "informix".task_cat_res ;
create table "informix".task_cat_res 
  (
    contact_code char(10) not null ,
    cat_id integer not null ,
    active char(1) 
        default 'Y' not null ,
    available char(1) 
        default 'B' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (available IN ('E' ,'A' ,'B' )) constraint "informix".edi_asg_bot2,
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
  );

