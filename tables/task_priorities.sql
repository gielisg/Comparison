drop table if exists "informix".task_priorities ;
create table "informix".task_priorities 
  (
    priority_id integer not null ,
    priority_narr char(32) not null ,
    active char(1) 
        default 'Y' not null ,
    disp_order integer 
        default 3 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
  );

