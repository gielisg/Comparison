drop table if exists "informix".actvb_cdr ;
create table "informix".actvb_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    service_no varchar(50),
    sp_account_no varchar(20),
    call_type char(2),
    call_duration integer,
    units smallint,
    called_no varchar(60),
    other_orig_no varchar(60),
    call_cost decimal(10,3),
    description varchar(255),
    start_date varchar(20),
    end_date varchar(20),
    start_time varchar(8),
    reference1 varchar(100),
    reference2 varchar(100),
    reference3 varchar(100),
    unique_ref varchar(100),
    reference4 varchar(100),
    file_id varchar(10)
  );

