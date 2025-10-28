drop table if exists "informix".entrchgoverride ;
create table "informix".entrchgoverride 
  (
    entrid integer not null ,
    chgoverrideid integer not null ,
    entrchgddatm datetime year to second not null 
  );

