drop table if exists "informix".wt_cdr_chg ;
create table "informix".wt_cdr_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_type char(2),
    carrier_id char(2),
    reference_num decimal(10,0),
    charge_num varchar(50),
    a_party varchar(40),
    b_party varchar(20),
    start_dtm datetime year to second,
    duration decimal(10,0),
    chg_end_dt date,
    chg_descr varchar(80),
    chg_qty decimal(10,0),
    chg_amount decimal(14,4),
    wt_tariff char(4),
    foreign_chg_type varchar(55),
    foreign_call_code char(5),
    service_name varchar(20),
    service_dept varchar(20),
    installment_no integer,
    installment_of integer,
    installment_tax char(4),
    installment_totamt decimal(14,4)
  );

