drop table if exists "informix".fileftpcnfg ;
create table "informix".fileftpcnfg 
  (
    ftpcnfgref serial not null ,
    ftpcnfgnarr varchar(255) not null ,
    ftphost varchar(64) not null ,
    ftpuser varchar(32) not null ,
    ftppass varchar(128) not null ,
    ftpport smallint,
    usebinary char(1) 
        default 'N' not null ,
    useppkey char(1) 
        default 'N' not null ,
    ppkeyid varchar(255),
    ftpargs varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (usebinary IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (useppkey IN ('Y' ,'N' )) constraint "informix".yes_no
  );

