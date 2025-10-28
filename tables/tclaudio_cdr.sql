drop table if exists "informix".tclaudio_cdr ;
create table "informix".tclaudio_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    parent_acc varchar(30),
    child_acc varchar(30),
    product varchar(30),
    call_date varchar(20) not null ,
    call_time varchar(20) not null ,
    dest_num varchar(63) not null ,
    dest_ann varchar(80),
    bill_dur varchar(10) not null ,
    net_amt varchar(10) not null ,
    bill_rate2 decimal(9,3),
    call_type varchar(200),
    origin_num varchar(63) not null ,
    call_dur integer not null ,
    bill_min integer not null ,
    bill_sec integer not null ,
    bill_tot_sec integer not null ,
    bill_amt decimal(12,3) not null ,
    amt_credit decimal(12,3)
  );

