drop table if exists "informix".sp_cn_invoice ;
create table "informix".sp_cn_invoice 
  (
    sp_cn_ref integer not null ,
    invoice_interval integer not null ,
    first_inv_period integer not null ,
    inv_this_period char(1) 
        default 'N' not null ,
    effect_inv_per integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (inv_this_period IN ('Y' ,'N' )) constraint "informix".yes_no
  );

