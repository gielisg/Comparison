drop table if exists "informix".nt_cl_cons ;
create table "informix".nt_cl_cons 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    prnt_nt_file_num integer not null ,
    prnt_nt_rec_num integer not null ,
    cl_dt_tabcd char(2) not null ,
    unitquantity decimal(20,10) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

