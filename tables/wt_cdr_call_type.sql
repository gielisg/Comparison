drop table if exists "informix".wt_cdr_call_type ;
create table "informix".wt_cdr_call_type 
  (
    wt_tariff char(4) not null ,
    wt_tariff_narr varchar(128) not null 
  );

