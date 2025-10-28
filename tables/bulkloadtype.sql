drop table if exists "informix".bulkloadtype ;
create table "informix".bulkloadtype 
  (
    bulkloadtypecode varchar(10) not null ,
    bulkloadtypenarr varchar(255) not null ,
    bulkloadtypeenab char(1) 
        default 'Y' not null ,
    bulkloaddelim varchar(30) 
        default ',' not null ,
    commiteachrecord char(1) 
        default 'N' not null ,
    locktables char(1) 
        default 'N' not null ,
    successemailaddr varchar(255),
    erroremailaddr varchar(255),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (bulkloaddelim IN (',' ,'|' )) constraint "informix".delimiter,
    
    check (bulkloadtypeenab IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (commiteachrecord IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (locktables IN ('Y' ,'N' )) constraint "informix".yes_no
  );

