drop table if exists "informix".jpo_ochg ;
create table "informix".jpo_ochg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    acct_id varchar(100),
    bill_cycle varchar(20),
    invoice_id varchar(100),
    other_chg_type varchar(100),
    other_chg_amt decimal(15,4),
    op_acct_id varchar(100),
    description varchar(250),
    quantity decimal(15,0),
    order_num varchar(100),
    reference_id varchar(100),
    chg_currency varchar(20),
    chg_file_name varchar(100),
    chg_start_dt datetime year to second,
    chg_end_dt datetime year to second
  );

