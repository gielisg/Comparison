drop table if exists "informix".dcelamnt ;
create table "informix".dcelamnt 
  (
    disceligid integer not null ,
    amnttypeid char(2) not null ,
    dcelamntnarr varchar(32) not null ,
    unit char(1) not null ,
    dcelamntfreq char(1) not null ,
    dcelamntamnt decimal(17,7) not null ,
    dcelamntlen integer 
        default 1 not null ,
    dcelamntpro char(1) 
        default 'Y' not null ,
    dcelaggrid integer,
    useredit char(1) 
        default 'N' not null ,
    incl_spend_alert char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (incl_spend_alert IN ('Y' ,'N' ,'B' )),
    
    check (dcelamntfreq IN ('D' ,'M' ,'Q' ,'O' ,'Y' ,'H' )) constraint "informix".eligfreq60,
    
    check (useredit IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (dcelamntpro IN ('Y' ,'N' )) constraint "informix".yes_no
  );

