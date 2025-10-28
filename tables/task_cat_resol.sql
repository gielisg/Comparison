drop table if exists "informix".task_cat_resol ;
create table "informix".task_cat_resol 
  (
    resol_id integer not null ,
    cat_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

