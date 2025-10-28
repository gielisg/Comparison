drop table if exists "informix".paycollstep ;
create table "informix".paycollstep 
  (
    paycollstepref serial not null ,
    paycollrunref integer not null ,
    paycollstepseq integer not null ,
    pcstepconfcode char(4) not null ,
    externalproc char(1) 
        default 'N' not null ,
    procstarted datetime year to second,
    procended datetime year to second,
    paycollstatcode char(4),
    heartbeat datetime year to second,
    heartbeatdtls varchar(128),
    auditlevel smallint 
        default 2,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (externalproc IN ('Y' ,'N' )) constraint "informix".yes_no
  );

