drop table if exists "informix".bulkloadfile ;
create table "informix".bulkloadfile 
  (
    bulkloadfileref serial not null ,
    bulkloadtypecode varchar(10) not null ,
    nt_file_num integer,
    bulkloadsource char(1) 
        default 'M' not null ,
    bulkloaddelim char(1) 
        default ',' not null ,
    commiteachrecord char(1) 
        default 'N' not null ,
    locktables char(1) 
        default 'N' not null ,
    bulkloadscheddt datetime year to second,
    bulkloadfilenote varchar(255),
    bulkloadstatcode char(10) 
        default 'UNPROC' not null ,
    bulkloadprocdt datetime year to second,
    bulkfilearchived char(1) 
        default 'N' not null ,
    successemailaddr varchar(255),
    erroremailaddr varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (bulkloaddelim IN (',' ,'|' )) constraint "informix".delimiter4,
    
    check (bulkloadsource IN ('M' ,'A' )) constraint "informix".filesource2,
    
    check (commiteachrecord IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (locktables IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (bulkfilearchived IN ('Y' ,'N' )) constraint "informix".yes_no
  );

