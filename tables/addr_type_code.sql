drop table if exists "informix".addr_type_code ;
create table "informix".addr_type_code 
  (
    addr_type_code char(2) not null ,
    address_narr char(32) not null ,
    contact_related char(1) 
        default 'Y' not null ,
    service_related char(1) 
        default 'Y' not null ,
    display_order integer 
        default 1 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (contact_related IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (service_related IN ('Y' ,'N' )) constraint "informix".yes_no
  );

