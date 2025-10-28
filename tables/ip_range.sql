drop table if exists "informix".ip_range ;
create table "informix".ip_range 
  (
    range_ref serial not null ,
    pool char(1) 
        default 'Y' not null ,
    base_address varchar(25,15) not null ,
    bit_offset char(5) not null ,
    super_class varchar(25,15),
    status_id integer 
        default 0 not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    element_ref integer,
    contact_code char(10),
    sp_cn_ref integer,
    customer_owned char(1) 
        default 'N' not null ,
    comment lvarchar(1024),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (pool IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (customer_owned IN ('Y' ,'N' )) constraint "informix".yes_no
  );

