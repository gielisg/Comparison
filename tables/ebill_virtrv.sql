drop table if exists "informix".ebill_virtrv ;
create table "informix".ebill_virtrv 
  (
    ntwtransid integer not null ,
    recordtype char(2) not null ,
    sequence decimal(9,0) not null ,
    orig_sequence decimal(9,0) not null ,
    service_num char(17) not null 
  );

