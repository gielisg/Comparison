drop table if exists "informix".billrun ;
create table "informix".billrun 
  (
    billrunref serial not null ,
    billrunseq integer not null ,
    bill_period integer not null ,
    cycle_code char(2) not null ,
    billrunconfcode char(4) not null ,
    billruntypecode char(2) not null ,
    billrunactpcode char(2) not null ,
    runblock char(4) not null ,
    startatstep char(4),
    pauseatstep char(4),
    endatstep char(4),
    prestepstrtdt datetime year to second not null ,
    billrunstrtdt datetime year to second not null ,
    billdate date not null ,
    billrunstatcode char(4) not null ,
    fin_src_code char(2) not null ,
    loglevel smallint 
        default 2 not null ,
    reports_only char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (runblock IN ('ALL' ,'PRE' ,'MAIN' ,'POST' )) constraint "informix".runblock4,
    
    check (reports_only IN ('Y' ,'N' )) constraint "informix".yes_no
  );

