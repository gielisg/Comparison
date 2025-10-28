drop table if exists "informix".timezone ;
create table "informix".timezone 
  (
    timezone_ref serial not null ,
    country_code char(2),
    coordinates varchar(15),
    timezone_name varchar(35) not null ,
    comments varchar(32),
    utc_offset integer,
    utc_dst_offset integer,
    notes varchar(80),
    regioncd char(3) not null ,
    visible char(1) 
        default 'N' not null ,
    default char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (default IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (visible IN ('Y' ,'N' )) constraint "informix".yes_no
  );

