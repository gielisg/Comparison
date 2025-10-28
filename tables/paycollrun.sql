drop table if exists "informix".paycollrun ;
create table "informix".paycollrun 
  (
    paycollrunref serial not null ,
    prntpaycolrunref integer,
    paycollconfcode char(4) not null ,
    paycollmodecode char(1) not null ,
    cycle_code char(2),
    paycollrundate datetime year to second not null ,
    paycollstarted datetime year to second,
    paycollstopped datetime year to second,
    paycollstatcode char(4) not null ,
    loglevel smallint not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

