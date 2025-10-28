drop table if exists "informix".bb_cdr_call_type ;
create table "informix".bb_cdr_call_type 
  (
    bb_tariff char(4) not null ,
    bb_tariff_narr varchar(128) not null 
  );

