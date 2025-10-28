drop table if exists "informix".tcbu_cdr ;
create table "informix".tcbu_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    parent_acct varchar(30),
    child_acct varchar(30),
    product varchar(200),
    origin_num varchar(63) not null ,
    number_0800 varchar(63),
    dest_num varchar(80),
    dest_annot varchar(120),
    call_time varchar(20) not null ,
    call_date varchar(20) not null ,
    ext_id_type varchar(80),
    bill_duration varchar(10) not null ,
    net_amt decimal(12,3) not null ,
    bill_rate2 decimal(12,3),
    call_type varchar(200),
    call_duration integer not null ,
    bill_min integer not null ,
    bill_sec integer not null ,
    bill_tot_sec integer not null ,
    bill_amt decimal(12,3) not null ,
    amt_credit decimal(12,3) not null 
  );

