drop table if exists "informix".hstaud_after ;
create table "informix".hstaud_after 
  (
    audit_ref integer not null ,
    colname varchar(18) not null ,
    newdata varchar(40)
  );

