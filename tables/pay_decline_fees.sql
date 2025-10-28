drop table if exists "informix".pay_decline_fees ;
create table "informix".pay_decline_fees 
  (
    decline_fee_id serial not null ,
    chg_code char(4),
    fixed_amount_ex decimal(20,10) 
        default 0.0000000000 not null ,
    enabled char(1) 
        default 'Y' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

