drop table if exists "informix".audit_before ;
create table "informix".audit_before 
  (
    audit_ref integer not null ,
    colname varchar(18) not null ,
    olddata varchar(40)
  );

