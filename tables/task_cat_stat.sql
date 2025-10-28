drop table if exists "informix".task_cat_stat ;
create table "informix".task_cat_stat 
  (
    status_id integer not null ,
    cat_id integer not null ,
    template_id integer,
    user_selectable char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (user_selectable IN ('Y' ,'N' )) constraint "informix".yes_no
  );

