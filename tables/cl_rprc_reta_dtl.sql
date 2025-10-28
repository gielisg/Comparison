drop table if exists "informix".cl_rprc_reta_dtl ;
create table "informix".cl_rprc_reta_dtl 
  (
    cl_ser_num integer not null ,
    reproc_id integer not null ,
    cl_entrid integer,
    tx_entrid integer,
    timebandcode char(4),
    entrtypecd char(2),
    rtl_non_disc_ex decimal(18,10),
    rtl_non_disc_tax decimal(18,10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

