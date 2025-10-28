drop table if exists "informix".activities ;
create table "informix".activities 
  (
    activity_id serial not null ,
    activity_narr varchar(254,30) not null ,
    active char(1) 
        default 'Y',
    disp_ord smallint 
        default 0 not null ,
    activity_cat_id integer,
    activity_text text,
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

