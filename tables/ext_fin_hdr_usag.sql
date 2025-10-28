drop table if exists "informix".ext_fin_hdr_usag ;
create table "informix".ext_fin_hdr_usag 
  (
    nt_file_num integer not null ,
    nt_file_rec_num serial not null ,
    ext_fin_ref integer,
    cl_dt_tabcd char(2) not null ,
    cl_ser_num integer,
    status_id integer 
        default 0 not null ,
    status_msg varchar(80),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

