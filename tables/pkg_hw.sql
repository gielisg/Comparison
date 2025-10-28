drop table if exists "informix".pkg_hw ;
create table "informix".pkg_hw 
  (
    pkg_hw_ref serial not null ,
    pkg_code integer not null ,
    display_order smallint,
    option smallint not null ,
    pkg_hw_narr varchar(254) not null ,
    comment varchar(254),
    from_date date 
        default today not null ,
    to_date date not null ,
    part_ship char(1),
    url varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (to_date >= from_date ) constraint "informix".chk_pkg_dte5,
    
    check (part_ship IN ('Y' ,'N' )) constraint "informix".yes_no
  );

