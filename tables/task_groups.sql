drop table if exists "informix".task_groups ;
create table "informix".task_groups 
  (
    group_id integer not null ,
    group_narr varchar(32) not null ,
    active char(1) 
        default 'Y' not null ,
    disp_ord smallint 
        default 0 not null ,
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

