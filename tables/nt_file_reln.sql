drop table if exists "informix".nt_file_reln ;
create table "informix".nt_file_reln 
  (
    ln_ser_num serial not null ,
    nt_file_num1 integer not null ,
    nt_file_rec_num1 integer not null ,
    nt_file_num2 integer not null ,
    nt_file_rec_num2 integer not null ,
    cl_ser_num1 integer,
    cl_ser_num2 integer,
    match_status char(1),
    ln_class smallint 
        default 0 not null 
  );

