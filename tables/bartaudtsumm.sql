drop table if exists "informix".bartaudtsumm ;
create table "informix".bartaudtsumm 
  (
    bill_period integer not null ,
    cycle_code char(2) not null ,
    pay_code char(2) not null ,
    debtor_code char(10) not null ,
    acc_pay_meth_ref integer not null ,
    inv_fin_ref integer not null ,
    calcamnt decimal(14,6) not null ,
    applyamnt decimal(14,6) not null ,
    isfulltrade char(1) 
        default 'N' not null ,
    fulltradeadjamnt decimal(14,6) not null ,
    isacctincredit char(1) 
        default 'N' not null ,
    acctbalance decimal(14,6) not null ,
    creditadjamnt decimal(14,6) not null ,
    inv_old_open_amt decimal(14,6) not null ,
    inv_new_open_amt decimal(14,6),
    rec_fin_ref integer,
    rec_fin_num char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (isfulltrade IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (isacctincredit IN ('Y' ,'N' )) constraint "informix".yes_no
  );

