drop table if exists "informix".insert_account ;
create table "informix".insert_account 
  (
    debtor_code char(10) not null ,
    insert_per_ref integer not null 
  );

