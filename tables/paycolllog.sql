drop table if exists "informix".paycolllog ;
create table "informix".paycolllog 
  (
    paycolllogref serial not null ,
    paycollrunref integer not null ,
    paycollstepref integer,
    logseq smallint not null ,
    logtype smallint not null ,
    logdt datetime year to second not null ,
    logmsg lvarchar(2000) not null ,
    logmsgordr smallint not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

