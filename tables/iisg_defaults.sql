drop table if exists "informix".iisg_defaults ;
create table "informix".iisg_defaults 
  (
    default_name char(18) not null ,
    default_value char(10) not null ,
    default_datatype char(20),
    default_narr char(50)
  );

