drop table if exists "informix".pwdata_cl_type ;
create table "informix".pwdata_cl_type 
  (
    product_id char(10) not null ,
    call_type_narr varchar(128) not null 
  );

