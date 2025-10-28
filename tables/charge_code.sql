drop table if exists "informix".charge_code ;
create table "informix".charge_code 
  (
    chg_code char(4) not null ,
    sp_chg_code varchar(64),
    chggroupid integer not null ,
    gl_acctcode varchar(45),
    cost_gl_acctcode varchar(45),
    frequency char(1) not null ,
    chg_in_advance char(1) not null ,
    advance_periods integer 
        default 1 not null ,
    prorata char(1) not null ,
    anivtypecode char(2) 
        default 'SM' not null ,
    chg_narr char(64) not null ,
    dispnarr char(64) not null ,
    dispordr integer not null ,
    invoice_grp char(2) not null ,
    consolidate char(1) 
        default 'N' not null ,
    unit char(10),
    std_rate decimal(8,2) 
        default 0.00 not null ,
    chg_cost_ex decimal(8,2),
    print_on_invoice char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (frequency IN ('D' ,'W' ,'M' ,'I' ,'Y' ,'N' ,'Q' ,'H' ,'B' ,'2' ,'S' ,'3' ,'5' )) 
              constraint "informix".freq_dwmiynq57,
    
    check (chg_in_advance IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (prorata IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (consolidate IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (print_on_invoice IN ('Y' ,'N' ,'Z' )) constraint "informix".yes_no
  );

