drop table if exists "informix".autochg ;
create table "informix".autochg 
  (
    autochgid serial not null ,
    srvctypecode char(4) 
        default 'ACCT' not null ,
    autochgnarr varchar(64) 
        default 'Auto Charge' not null ,
    chg_code char(4) not null ,
    autochgbillnarr varchar(64,1) not null ,
    autochgwefr datetime year to second not null ,
    autochgweto datetime year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

