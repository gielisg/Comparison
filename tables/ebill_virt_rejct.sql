drop table if exists "informix".ebill_virt_rejct ;
create table "informix".ebill_virt_rejct 
  (
    ntwtransid integer not null ,
    recordtype char(2) not null ,
    sequence decimal(9,0) not null ,
    service_num char(17) not null ,
    reject_date date not null ,
    reject_code char(2) not null 
  );

