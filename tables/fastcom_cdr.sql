drop table if exists "informix".fastcom_cdr ;
create table "informix".fastcom_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_date varchar(30),
    bill_group varchar(80),
    from_number varchar(80),
    term_number varchar(80),
    call_type varchar(80),
    seconds varchar(30),
    bill_amount varchar(30),
    site varchar(80),
    service varchar(80),
    item_desc varchar(80),
    name varchar(30)
  );

