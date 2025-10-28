drop table if exists "informix".bpay_nab ;
create table "informix".bpay_nab 
  (
    nt_file_num integer not null ,
    biller_code char(10) not null ,
    biller_short_name varchar(20,10) not null ,
    biller_bsb char(6),
    biller_account char(9),
    file_create_dt datetime year to second,
    num_payments integer,
    payment_amt decimal(10,2),
    num_errors integer,
    error_amt decimal(10,2),
    num_reversals integer,
    reversal_amt decimal(10,2),
    settle_amt decimal(10,2)
  );

