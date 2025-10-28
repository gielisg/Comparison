drop table if exists "informix".verizon_cl_type ;
create table "informix".verizon_cl_type 
  (
    point_class decimal(10,0) not null ,
    cl_type_narr varchar(128) not null 
  );

