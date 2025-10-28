drop table if exists "informix".srvctyperelntp ;
create table "informix".srvctyperelntp 
  (
    srvctyperelntpcd char(4) not null ,
    relntp_narr varchar(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

