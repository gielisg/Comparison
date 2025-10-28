drop table if exists "informix".it_adsl_cl_dtl ;
create table "informix".it_adsl_cl_dtl 
  (
    nt_file_num integer not null ,
    nt_src_rec_num integer not null ,
    source_destn char(1) not null ,
    nt_file_rec_num integer not null ,
    
    check (source_destn IN ('S' ,'D' )) constraint "informix".source_dest
  );

