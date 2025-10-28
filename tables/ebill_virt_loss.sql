drop table if exists "informix".ebill_virt_loss ;
create table "informix".ebill_virt_loss 
  (
    ntwtransid integer not null ,
    recordtype char(2) not null ,
    sequence decimal(9,0),
    service_num char(17) not null ,
    loss_date date not null ,
    loss_code char(2) not null 
  );

