drop table if exists "informix".site ;
create table "informix".site 
  (
    siteid serial not null ,
    site_name varchar(254,30) not null ,
    note lvarchar(1000),
    bus_unit_code char(2) not null ,
    sitetypeid integer not null ,
    site_enabled char(1) 
        default 'Y' not null ,
    site_status_id integer,
    cust_siteid varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((site_status_id >= 0 ) AND (site_status_id <= 10 ) ),
    
    check (site_enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

