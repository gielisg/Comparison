drop table if exists "informix".veda_verify_tran ;
create table "informix".veda_verify_tran 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    company_name varchar(50) not null ,
    invoice_number varchar(8) not null ,
    invoice_date date not null ,
    invoice_total_in decimal(12,2) not null ,
    invoice_total_ex decimal(12,2) not null ,
    account_number char(10) not null ,
    verify_srvc_id char(5) not null ,
    service_volume integer not null ,
    service_price_in decimal(12,2),
    service_price_ex decimal(12,2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

