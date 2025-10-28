drop table if exists "informix".pack_cont_cat ;
create table "informix".pack_cont_cat 
  (
    category_code char(4) not null ,
    pkg_code integer not null ,
    option smallint not null ,
    default_pkg char(1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (default_pkg IN ('Y' ,'N' )) constraint "informix".yes_no
  );

