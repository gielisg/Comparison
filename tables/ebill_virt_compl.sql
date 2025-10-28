drop table if exists "informix".ebill_virt_compl ;
create table "informix".ebill_virt_compl 
  (
    ntwtransid integer not null ,
    recordtype char(2) not null ,
    sequence decimal(9,0),
    service_num char(17) not null ,
    date_complete date not null ,
    class_code char(2) not null 
  );

