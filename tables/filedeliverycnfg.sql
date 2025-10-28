drop table if exists "informix".filedeliverycnfg ;
create table "informix".filedeliverycnfg 
  (
    deliverycnfgref serial not null ,
    deliverytypecode varchar(6) not null ,
    delivordr integer not null ,
    makeremotesubdir char(1),
    batchcnfgref integer not null ,
    ftpcnfgref integer,
    smscnfgref integer,
    emailcnfgref integer,
    baseftpfolder varchar(255),
    fromaddr varchar(255),
    active char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (makeremotesubdir IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
  );

