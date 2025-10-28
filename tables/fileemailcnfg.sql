drop table if exists "informix".fileemailcnfg ;
create table "informix".fileemailcnfg 
  (
    emailcnfgref serial not null ,
    emailcnfgnarr varchar(255) not null ,
    smtphost varchar(64) not null ,
    smtpuser varchar(32),
    smtppass varchar(128),
    smtpport smallint 
        default 25 not null ,
    smtpargs varchar(255),
    emailto varchar(255) not null ,
    emailcc varchar(255),
    emailbcc varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

