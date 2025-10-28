drop table if exists "informix".bulkloaderr ;
create table "informix".bulkloaderr 
  (
    bulkloaderrref serial not null ,
    bulkloadfileref integer not null ,
    bulkloaddtlref integer,
    bulkloadfieldref integer,
    bulkloadfieldno integer,
    bulkloaderrtype char(1) 
        default 'E' not null ,
    bulkloaderrmsg varchar(255) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (bulkloaderrtype IN ('E' ,'W' ,'U' )) constraint "informix".errtype
  );

