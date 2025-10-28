drop table if exists "informix".paycollconf ;
create table "informix".paycollconf 
  (
    paycollconfcode char(4) not null ,
    paycollconfnarr varchar(64) not null ,
    pay_provider integer,
    batchcnfgref integer not null ,
    collectmethod char(2) 
        default 'CC',
    cyclepaydelay smallint,
    paycollecttime datetime hour to second 
        default  datetime (10:00:00) hour to second,
    exclpubhols char(1) 
        default 'Y',
    runminstrtday smallint 
        default 1,
    runmaxstrtday smallint 
        default 5,
    recollectonfail char(1) 
        default 'N' not null ,
    recollectdelay smallint 
        default 7,
    recollectattempt smallint 
        default 2,
    paycollprocordr integer 
        default 3 not null ,
    paycollconfwefr date 
        default today not null ,
    paycollconfweto date not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (collectmethod IN ('CC' ,'DD' )) constraint "informix".coll_method8,
    
    check (recollectonfail IN ('Y' ,'N' )) constraint "informix".yes_no
  );

