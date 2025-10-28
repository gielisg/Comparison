drop table if exists "informix".cl_rprc_unld_dtl ;
create table "informix".cl_rprc_unld_dtl 
  (
    cl_ser_num integer not null ,
    reproc_id integer not null ,
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

