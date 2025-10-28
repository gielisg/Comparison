drop table if exists "informix".tariff_dtl ;
create table "informix".tariff_dtl 
  (
    tariff_num integer not null ,
    tariff_detl_desc varchar(32) not null ,
    connect_price decimal(18,10),
    band1_rate decimal(18,10) 
        default 0.0000000000 not null ,
    taxable char(1) 
        default 'Y' not null ,
    disp_order integer 
        default 3 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (taxable IN ('Y' ,'N' )) constraint "informix".yes_no
  );

