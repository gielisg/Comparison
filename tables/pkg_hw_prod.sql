drop table if exists "informix".pkg_hw_prod ;
create table "informix".pkg_hw_prod 
  (
    pkg_hw_prod_ref serial not null ,
    pkg_hw_ref integer not null ,
    prodcode varchar(194) not null ,
    max_qty smallint 
        default 0 not null ,
    min_qty smallint 
        default 0 not null ,
    base_price_qty smallint,
    price decimal(10,4),
    additional_price decimal(10,4),
    num_install smallint 
        default 0 not null ,
    frequency char(1) not null ,
    display_order integer 
        default 3 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (frequency IN ('D' ,'W' ,'M' ,'I' ,'Y' ,'N' )) constraint "informix".frequency_dwmiyn2,
    
    check (base_price_qty <= max_qty ) constraint "informix".max_qty_le5
  );

