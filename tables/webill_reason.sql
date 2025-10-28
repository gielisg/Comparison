drop table if exists "informix".webill_reason ;
create table "informix".webill_reason 
  (
    reason_code integer not null ,
    reason_narr varchar(254)
  );

