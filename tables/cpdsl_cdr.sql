drop table if exists "informix".cpdsl_cdr ;
create table "informix".cpdsl_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    file_date varchar(20),
    account_code varchar(50),
    login_id varchar(64) not null ,
    billing_desc varchar(250),
    mb_sent_total decimal(10,3),
    mb_rec_total decimal(10,3),
    last_logtime varchar(30),
    last_update varchar(30)
  );

