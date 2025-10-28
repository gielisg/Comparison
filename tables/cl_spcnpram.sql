drop table if exists "informix".cl_spcnpram ;
create table "informix".cl_spcnpram 
  (
    cl_ser_num integer not null ,
    spcnpramdetlid integer not null ,
    spcnpramdetlused decimal(20,10) not null 
  );

