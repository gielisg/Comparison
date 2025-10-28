drop table if exists "informix".hstaud_before ;
create table "informix".hstaud_before 
  (
    audit_ref integer not null ,
    colname varchar(18) not null ,
    olddata varchar(40)
  );

