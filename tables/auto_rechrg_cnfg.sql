drop table if exists "informix".auto_rechrg_cnfg ;
create table "informix".auto_rechrg_cnfg 
  (
    auto_rechrg_ref serial not null ,
    contact_code char(10) not null ,
    rechrg_status integer not null ,
    from_dt datetime year to second not null ,
    to_dt datetime year to second not null ,
    dflt_rechrg_amt decimal(16,3) not null ,
    rechrg_amt_fixed char(1) 
        default 'N' not null ,
    trigger_balance decimal(16,3) not null ,
    note lvarchar(1024),
    
    check (rechrg_status IN (0 ,1 ,10 ,20 )) constraint "informix".rechrg_status,
    
    check (rechrg_amt_fixed IN ('Y' ,'N' )) constraint "informix".yes_no
  );

