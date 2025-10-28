drop table if exists "informix".cl_rprc_dtl ;
create table "informix".cl_rprc_dtl 
  (
    cl_ser_num integer not null ,
    reproc_id integer not null ,
    reproc_dtl_stat char(1) 
        default 'U',
    rtl_disc_ex decimal(18,10) 
        default 0.0000000000 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (reproc_dtl_stat IN ('U' ,'C' ,'I' )) constraint "informix".reproc_dtl_stat5
  );

