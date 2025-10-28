drop table if exists "informix".paycollacct ;
create table "informix".paycollacct 
  (
    paycollacctref serial not null ,
    paycollrunref integer not null ,
    paycollstepref integer,
    paycollseq smallint,
    debtor_code char(10),
    sp_cn_ref integer,
    bill_ref integer,
    fin_ref integer,
    inv_fin_ref integer,
    acc_pay_meth_ref integer,
    rec_create_stat char(2) not null ,
    acctbal decimal(22,2) not null ,
    futurecredamnt decimal(22,2) not null ,
    futuredebamnt decimal(18,6) not null ,
    surchargeamnt decimal(18,2),
    collectamnt decimal(18,2) not null ,
    exchcollectamnt decimal(18,2),
    exchraterateid integer,
    processeddt datetime year to second,
    statusreason varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

