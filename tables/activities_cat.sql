drop table if exists "informix".activities_cat ;
create table "informix".activities_cat 
  (
    activity_cat_id serial not null ,
    narrative varchar(64) not null ,
    active char(1) 
        default 'Y' not null ,
    disp_ord smallint 
        default 0 not null ,
    activity_cat_txt text,
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

