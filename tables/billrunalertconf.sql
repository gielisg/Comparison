drop table if exists "informix".billrunalertconf ;
create table "informix".billrunalertconf 
  (
    alertconfref serial not null ,
    alertconfnarr varchar(128) not null ,
    billrunconfcode char(4) not null ,
    billruntypecode char(2) 
        default 'BR' not null ,
    billstepconfcode char(4),
    billrunstatcode char(4),
    alertmeth char(4) not null ,
    enabled char(1) 
        default 'Y' not null ,
    alertmethdest varchar(255) not null ,
    alertmethdestcc varchar(255),
    fromaddr varchar(255),
    sendfile char(1) 
        default 'N' not null ,
    sendlog char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sendfile IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (sendlog IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

