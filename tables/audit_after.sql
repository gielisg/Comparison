drop table if exists "informix".audit_after ;
create table "informix".audit_after 
  (
    audit_ref integer not null ,
    colname varchar(18) not null ,
    newdata varchar(40)
  );

