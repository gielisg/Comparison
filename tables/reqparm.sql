drop table if exists "informix".reqparm ;
create table "informix".reqparm 
  (
    reqparmid serial not null ,
    binparmid integer,
    cmdreqid integer not null ,
    reqparmflg char(18),
    reqparm varchar(254),
    reqparminclude char(1) 
        default 'U' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (reqparminclude IN ('Y' ,'N' ,'U' )) constraint "informix".yes_no
  );

