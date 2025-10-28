drop table if exists "informix".gs_tap3 ;
create table "informix".gs_tap3 
  (
    gs_tap3_id serial not null ,
    cl_ser_num integer,
    wtf_ref integer,
    amount decimal(10,3)
  );

