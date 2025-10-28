drop table if exists "informix".cba_resp ;
create table "informix".cba_resp 
  (
    cba_respid serial not null ,
    cba_tranid integer not null ,
    cba_respdatm datetime year to second not null ,
    cba_respstan char(6),
    cba_respcasi char(8)
  );

