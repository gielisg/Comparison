drop table if exists "informix".ebill_rejct ;
create table "informix".ebill_rejct 
  (
    ntwtransid integer not null ,
    recordtype char(2) not null ,
    sequence decimal(9,0),
    service_num char(17),
    ebill_prod_pkg char(3),
    date_rejected date,
    reject_code char(2) not null 
  );

