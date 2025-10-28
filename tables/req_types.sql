drop table if exists "informix".req_types ;
create table "informix".req_types 
  (
    request_type char(18) not null ,
    request_narr varchar(64) not null ,
    contact_type char(1),
    contact_sub_type char(2)
  );

