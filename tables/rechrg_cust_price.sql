drop table if exists "informix".rechrg_cust_price ;
create table "informix".rechrg_cust_price 
  (
    rec_cust_price_ref serial not null ,
    rechrg_type_id integer,
    contact_code char(10),
    from_date date not null ,
    to_date date not null ,
    price_inc decimal(16,4) not null ,
    price_tax decimal(16,4) not null ,
    fixed_price char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (fixed_price IN ('Y' ,'N' )) constraint "informix".yes_no
  );

