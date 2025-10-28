drop table if exists "informix".schedemail ;
create table "informix".schedemail 
  (
    reqmailid serial not null ,
    binemailid integer not null ,
    schedreqid integer not null ,
    reqemaillog char(1) 
        default 'N' not null ,
    reqemailout char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (reqemaillog IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (reqemailout IN ('Y' ,'N' )) constraint "informix".yes_no
  );

