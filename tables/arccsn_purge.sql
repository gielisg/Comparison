drop table if exists "informix".arccsn_purge ;
create table "informix".arccsn_purge 
  (
    inv_ref integer not null ,
    cl_ser_num integer not null ,
    cl_dt_tabcd char(2) not null ,
    nt_file_num integer not null ,
    nt_file_rec_num integer not null 
  );

