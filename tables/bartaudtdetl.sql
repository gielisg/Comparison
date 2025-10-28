drop table if exists "informix".bartaudtdetl ;
create table "informix".bartaudtdetl 
  (
    bill_period integer not null ,
    cycle_code char(2) not null ,
    pay_code char(2) not null ,
    debtor_code char(10) not null ,
    acc_pay_meth_ref integer not null ,
    fin_ref integer not null ,
    fin_date date not null ,
    sp_cn_ref integer not null ,
    pkg_code integer not null ,
    bartgrpid integer not null ,
    tar_class_code smallint,
    chg_code char(4),
    barteligrate decimal(6,4) not null ,
    sumentrsignamnt decimal(14,6) not null ,
    calcamnt decimal(14,6) not null ,
    istax char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (istax IN ('Y' ,'N' )) constraint "informix".yes_no
  );

