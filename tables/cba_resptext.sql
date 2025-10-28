drop table if exists "informix".cba_resptext ;
create table "informix".cba_resptext 
  (
    cba_respid integer not null ,
    cba_resptextsqno integer not null ,
    cba_respinfo varchar(255)
  );

