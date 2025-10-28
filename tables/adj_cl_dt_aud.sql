drop table if exists "informix".adj_cl_dt_aud ;
create table "informix".adj_cl_dt_aud 
  (
    adj_item_ref integer not null ,
    cl_ser_num integer not null ,
    rtl_non_disc_ex decimal(12,6) 
        default 0.000000 not null ,
    rtl_non_disc_tax decimal(12,6) 
        default 0.000000 not null ,
    rtl_disc_ex decimal(12,6) 
        default 0.000000 not null ,
    rtl_disc_tax decimal(12,6) 
        default 0.000000 not null 
  );

