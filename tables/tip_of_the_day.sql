drop table if exists "informix".tip_of_the_day ;
create table "informix".tip_of_the_day 
  (
    tip_id serial not null ,
    tip text,
    url varchar(254),
    enabled char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

