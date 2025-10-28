drop table if exists "informix".strvalid ;
create table "informix".strvalid 
  (
    strtypecd char(6) not null ,
    strvalidseq integer 
        default 1 not null ,
    srvctypecode char(4) 
        default 'ALL' not null ,
    strvalidtype char(1) not null ,
    strtypeexpr varchar(255) not null ,
    strtypemsg varchar(255) not null ,
    strvalidcd varchar(32),
    strvaliddesc varchar(255),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (strvalidtype IN ('E' ,'W' )) constraint "informix".strvalidtype13
  );

