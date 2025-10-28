drop table if exists "informix".rpd_vrs ;
create table "informix".rpd_vrs 
  (
    nt_file_num integer not null ,
    coverage_date date not null ,
    file_nm varchar(80) not null ,
    file_seq_num integer not null ,
    trans_type char(3) not null ,
    num_of_rec integer,
    total_amt decimal(10,2)
  );

