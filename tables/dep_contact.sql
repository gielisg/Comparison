drop table if exists "informix".dep_contact ;
create table "informix".dep_contact 
  (
    dep_id integer not null ,
    contact_code char(10) not null 
  );

