drop table if exists "informix".ebill_loss_code ;
create table "informix".ebill_loss_code 
  (
    loss_code char(2) not null ,
    loss_code_narr varchar(128) not null 
  );

