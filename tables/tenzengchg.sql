drop table if exists "informix".tenzengchg ;
create table "informix".tenzengchg 
  (
    nt_file_num integer,
    nt_file_rec_num integer,
    orig_spchgdtlref integer,
    debtor_code char(10),
    service_no varchar(64),
    charge_code char(4) not null ,
    charge_narr varchar(64),
    charge_start_dt datetime year to second not null ,
    charge_end_dt datetime year to second not null ,
    charge_amt_ex decimal(12,6) not null ,
    charge_amt_tax decimal(12,6) not null ,
    bill_narr varchar(64),
    unit char(10),
    unitquantity decimal(10,2) 
        default 1.00 not null ,
    unitrate decimal(12,6),
    transaction_id integer
  );

