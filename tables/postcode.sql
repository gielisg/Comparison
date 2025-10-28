drop table if exists "informix".postcode ;
create table "informix".postcode 
  (
    pcode_ref serial not null ,
    pcode char(4) not null ,
    locality varchar(64,10) not null ,
    state_code char(3) not null ,
    presort_ind char(4),
    country_code char(2) 
        default 'AU' not null 
  );

