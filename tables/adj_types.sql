drop table if exists "informix".adj_types ;
create table "informix".adj_types 
  (
    adj_type_ref integer not null ,
    adj_type_narr varchar(32,1) not null 
  );

