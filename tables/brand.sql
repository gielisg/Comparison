drop table if exists "informix".brand ;
create table "informix".brand 
  (
    brand_id serial not null ,
    brand_name varchar(254,20) not null ,
    manu_code char(3),
    display_order integer 
        default 3 not null ,
    url varchar(254),
    add_info varchar(254),
    note varchar(254),
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

