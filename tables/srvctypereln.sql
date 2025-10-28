drop table if exists "informix".srvctypereln ;
create table "informix".srvctypereln 
  (
    prntsrvctype char(4) not null ,
    chldsrvctype char(4) not null ,
    srvctyperelntpcd char(4) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

