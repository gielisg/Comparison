drop table if exists "informix".ebill_virt ;
create table "informix".ebill_virt 
  (
    ntwtransid integer not null ,
    recordtype char(2) not null ,
    sequence decimal(9,0) not null ,
    service_num char(17) not null ,
    ca_date date not null 
  );

