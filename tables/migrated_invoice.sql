drop table if exists "informix".migrated_invoice ;
create table "informix".migrated_invoice 
  (
    cl_ser_num integer not null ,
    inv_num char(10) not null 
  );

