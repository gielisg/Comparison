drop table if exists "informix".filesmscnfg ;
create table "informix".filesmscnfg 
  (
    smscnfgref serial not null ,
    smscnfgnarr varchar(255) not null ,
    smshost varchar(64) not null ,
    smsuser varchar(32) not null ,
    smspass varchar(128) not null ,
    smsargs varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

