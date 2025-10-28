drop table if exists "informix".fin_recdtl ;
create table "informix".fin_recdtl 
  (
    fin_recdtl_ref serial not null ,
    fin_ref integer not null ,
    cash_rec char(1) not null ,
    chq_num varchar(10),
    acc_pay_meth_ref integer,
    pay_provider integer,
    surcharge_amount decimal(8,2) 
        default 0.00 not null ,
    cash_type varchar(20),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (cash_type IN ('Cash' ,'Cheque' )) constraint "informix".cash_type,
    
    check ((cash_rec = 'Y' ) OR ((cash_rec = 'N' ) AND (acc_pay_meth_ref IS NOT NULL 
              ) ) ) constraint "informix".fin_recdtlchk19,
    
    check (cash_rec IN ('Y' ,'N' )) constraint "informix".yes_no
  );

