drop table if exists "informix".iseek_dat_cl_dtl ;
create table "informix".iseek_dat_cl_dtl 
  (
    nt_file_num integer not null ,
    src_rec_num integer not null ,
    up_down_flg char(1) not null ,
    nt_file_rec_num integer
  );

