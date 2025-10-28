drop table if exists "informix".billstep ;
create table "informix".billstep 
  (
    billstepref serial not null ,
    billrunref integer not null ,
    billrunstepseq integer not null ,
    billstepconfcode char(4),
    curr_code char(3),
    procstarted datetime year to second,
    proccompleted datetime year to second,
    billrunstatcode char(4) not null ,
    heartbeat datetime year to second,
    heartbeatdtls varchar(255),
    loglevel smallint 
        default 2 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

