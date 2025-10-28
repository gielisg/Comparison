drop table if exists "informix".tb_cdr_chg ;
create table "informix".tb_cdr_chg 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    seq_no decimal(10,0),
    chg_type char(1),
    start_dtm datetime year to second,
    end_dtm datetime year to second,
    durn_sec decimal(10,0),
    aparty_num varchar(64),
    bparty_num varchar(64),
    chgparty_num varchar(64),
    cost decimal(16,4),
    calltype char(10),
    description varchar(128),
    quantity integer
  );

