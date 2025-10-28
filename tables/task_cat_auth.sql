drop table if exists "informix".task_cat_auth ;
create table "informix".task_cat_auth 
  (
    cat_id integer not null ,
    contact_code char(10) not null ,
    active char(1) 
        default 'Y' not null ,
    available char(1) 
        default 'B' not null ,
    mandatory char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (available IN ('E' ,'A' ,'B' )) constraint "informix".edi_asg_bot7,
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (mandatory IN ('Y' ,'N' )) constraint "informix".yes_no
  );

