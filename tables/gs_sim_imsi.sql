drop table if exists "informix".gs_sim_imsi ;
create table "informix".gs_sim_imsi 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    sim char(20) not null ,
    imsi char(15) not null 
  );

