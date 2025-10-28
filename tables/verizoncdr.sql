drop table if exists "informix".verizoncdr ;
create table "informix".verizoncdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    msg_id varchar(10),
    msg_id2 char(3),
    msg_id_serv char(3),
    element_id varchar(10),
    account_no varchar(10),
    cust_num varchar(10),
    company_name varchar(169),
    transaction_date datetime year to second,
    originating_cli varchar(72),
    terminating_cli varchar(72),
    point_class decimal(10,0),
    destn_name varchar(240),
    country_id varchar(6),
    destn_country varchar(240),
    call_durn decimal(10,0),
    rated_date datetime year to second,
    file_id varchar(10)
  );

