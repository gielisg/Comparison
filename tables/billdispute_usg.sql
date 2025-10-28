drop table if exists "informix".billdispute_usg ;
create table "informix".billdispute_usg 
  (
    dispute_ref integer not null ,
    cl_ser_num integer not null 
  );

