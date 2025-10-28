drop table if exists "informix".terms ;
create table "informix".terms 
  (
    term_code char(2) not null ,
    term_narr varchar(32),
    inv_or_stat char(1) 
        default 'S' not null ,
    term_units char(1) 
        default 'D' not null ,
    term integer not null ,
    dep_int decimal(5,2) 
        default 0.00 not null ,
    odue_int decimal(5,2) 
        default 0.00 not null ,
    late_pay_fee decimal(5,2) 
        default 0.00 not null ,
    term_order integer 
        default 3 not null ,
    term_default char(1) 
        default 'N' not null ,
    term_display char(1) 
        default 'Y' not null ,
    allow_weekend_dd char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (inv_or_stat IN ('I' ,'S' ,'A' )) constraint "informix".inv_or_stat15,
    
    check (term_units IN ('D' ,'M' ,'Y' )) constraint "informix".term_units2,
    
    check (term_default IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (term_display IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (allow_weekend_dd IN ('Y' ,'N' )) constraint "informix".yes_no
  );

