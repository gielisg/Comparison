drop table if exists "informix".veda_nz_trans ;
create table "informix".veda_nz_trans 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    trans_code char(2) not null ,
    short_desc char(10) not null ,
    long_desc char(30),
    client_id char(6) not null ,
    as400_userid char(6),
    operator_name char(20) not null ,
    amount decimal(12,2) not null ,
    job_number char(6),
    trans_dt datetime year to second not null ,
    subject varchar(80) not null ,
    reference varchar(15),
    journal char(1),
    bis_baynet_ind char(1) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

