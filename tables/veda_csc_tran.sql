drop table if exists "informix".veda_csc_tran ;
create table "informix".veda_csc_tran 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    invoice_number varchar(20) not null ,
    invoice_date date not null ,
    invoice_due_date date,
    invoice_total_in decimal(12,2) not null ,
    invoice_total_ex decimal(12,2) not null ,
    csc_account_no varchar(10) not null ,
    csc_prod_code varchar(16) not null ,
    channel_code char(2) not null ,
    order_dt datetime year to second not null ,
    trans_dt datetime year to second not null ,
    trans_price_inc decimal(12,2) not null ,
    trans_price_ex decimal(12,2) not null ,
    trans_price_tax decimal(12,2) not null ,
    trans_quantity integer 
        default 1 not null ,
    subject varchar(100),
    user_id varchar(100),
    user_name varchar(100),
    client_field1 varchar(100),
    client_field2 varchar(100),
    po_num varchar(100),
    search_criteria varchar(200),
    trans_ref varchar(100),
    csc_trans_id varchar(10) not null ,
    source varchar(20) not null ,
    account_manager varchar(80),
    end_client varchar(80),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

