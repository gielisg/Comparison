drop table if exists "informix".ebill_loss ;
create table "informix".ebill_loss 
  (
    ntwtransid integer not null ,
    recordtype char(2) not null ,
    sequence decimal(9,0),
    service_num char(17),
    ebill_prod_pkg char(3) not null ,
    gaining_sp char(3),
    loss_date date,
    loss_code char(2) not null ,
    provision_ref char(16)
  );

