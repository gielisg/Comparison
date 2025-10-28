drop table if exists "informix".payreq_resp_ezi ;
create table "informix".payreq_resp_ezi 
  (
    payreq_resp_id serial not null ,
    payment_id varchar(20) not null ,
    your_sys_ref varchar(20),
    your_gen_ref varchar(20),
    customer_name varchar(32),
    debit_date varchar(10) not null ,
    payment_ref varchar(64),
    payment_method varchar(5),
    payment_source varchar(15) not null ,
    payment_amount decimal(8,2) not null ,
    scheduled_amount decimal(8,2) not null ,
    tran_fee_client decimal(20,16) not null ,
    tran_fee_cust decimal(20,16),
    settlement_date varchar(10) not null ,
    invoice_id integer,
    payment_status char(1) not null ,
    bank_return_code varchar(10) not null ,
    bank_fail_reason varchar(30),
    bank_receipt_id varchar(120),
    transaction_time varchar(10),
    error_code varchar(10),
    error_message varchar(40),
    fin_ref integer,
    status_id integer,
    nt_file_num integer,
    ezidebit_cust_id varchar(30),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

