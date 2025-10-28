drop table if exists "informix".file_type_tran ;
create table "informix".file_type_tran 
  (
    file_type_code char(10) not null ,
    ntwtrantypecd char(10) not null 
  );

