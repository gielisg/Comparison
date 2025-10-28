drop table if exists "informix".veda_con_svc_txn ;
create table "informix".veda_con_svc_txn 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    source_system char(3) not null ,
    payment_method char(10) not null ,
    product_code char(4) not null ,
    action integer not null ,
    a_la_carte_ind char(1) not null ,
    price_ex_gst decimal(10,2) not null ,
    gst decimal(10,2) not null ,
    start_date date not null ,
    end_date date not null ,
    transaction_num varchar(20) not null ,
    member_id varchar(10) not null ,
    campaign_code varchar(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

