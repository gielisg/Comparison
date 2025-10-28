drop table if exists "informix".billrunconf ;
create table "informix".billrunconf 
  (
    billrunconfcode char(4) not null ,
    billrunconfnarr varchar(32,16) not null ,
    dfltbillrunconf char(1) 
        default 'N' not null ,
    loglevel smallint 
        default 2 not null ,
    billrundelaydays integer not null ,
    exclpublhols char(1) not null ,
    autosched char(1) not null ,
    autoschedtime datetime hour to second,
    autoschedmths integer,
    runminstartday integer,
    runmaxstartday integer,
    dfltbilldatedays integer 
        default 1 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dfltbillrunconf IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (autosched IN ('Y' ,'N' )) constraint "informix".yes_no
  );

