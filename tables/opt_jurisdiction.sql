drop table if exists "informix".opt_jurisdiction ;
create table "informix".opt_jurisdiction 
  (
    jurisdiction integer not null ,
    jurisdiction_nar varchar(128,96)
  );

