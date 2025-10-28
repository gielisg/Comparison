drop table if exists "informix".reqemail ;
create table "informix".reqemail 
  (
    reqemailid serial not null ,
    binemailid integer,
    cmdreqid integer not null ,
    reqemaillog char(1) 
        default 'N' not null ,
    reqemailout char(1) 
        default 'Y' not null ,
    
    check (reqemaillog IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (reqemailout IN ('Y' ,'N' )) constraint "informix".yes_no
  );

