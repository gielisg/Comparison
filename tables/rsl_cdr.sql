drop table if exists "informix".rsl_cdr ;
create table "informix".rsl_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    eventid varchar(30),
    rectype char(1),
    calldate datetime year to second,
    calldurn interval second(8) to second,
    aparty varchar(20,10) not null ,
    bparty varchar(20,10) not null ,
    chgparty varchar(20,10) not null ,
    currency char(10),
    ntcost decimal(12,6),
    planid char(10),
    distance char(10),
    islocal char(1),
    calltype integer,
    carrierid char(1),
    rate_id integer
  );

