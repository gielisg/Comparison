drop table if exists "informix".task_categories ;
create table "informix".task_categories 
  (
    cat_id serial not null ,
    cat_narr char(32) not null ,
    active char(1) 
        default 'Y' not null ,
    disp_ord smallint 
        default 0 not null ,
    note lvarchar(31000),
    end_usr_edit char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (end_usr_edit IN ('Y' ,'N' )) constraint "informix".yes_no
  );

