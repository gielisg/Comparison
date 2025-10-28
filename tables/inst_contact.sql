drop table if exists "informix".inst_contact ;
create table "informix".inst_contact 
  (
    inst_id integer not null ,
    contact_code char(10) not null 
  );

