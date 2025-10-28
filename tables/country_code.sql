drop table if exists "informix".country_code ;
create table "informix".country_code 
  (
    country_code char(2) not null ,
    country_narr char(32) not null ,
    isd_code char(5),
    display_order smallint,
    default char(1) 
        default 'N',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (default IN ('Y' ,'N' )) constraint "informix".yes_no
  );

