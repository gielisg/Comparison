drop table if exists "informix".pay_request_types ;
create table "informix".pay_request_types 
  (
    request_type integer not null ,
    request_narr char(32) not null 
  );

