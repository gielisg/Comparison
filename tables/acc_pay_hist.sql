drop table if exists "informix".acc_pay_hist ;
create table "informix".acc_pay_hist 
  (
    acc_pay_meth_ref integer not null ,
    from_dt datetime year to second not null ,
    to_dt datetime year to second not null ,
    acct_name char(32) not null ,
    bank_sort_num char(7),
    exp_date date,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

