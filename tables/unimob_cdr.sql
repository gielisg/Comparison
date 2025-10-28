drop table if exists "informix".unimob_cdr ;
create table "informix".unimob_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    eventid varchar(30),
    rectype char(1),
    calldate datetime year to second,
    calldurn interval second(8) to second,
    aparty varchar(64,10),
    bparty varchar(64,10),
    chgparty varchar(64,10),
    currency varchar(10),
    ntcost decimal(12,6),
    planid varchar(10),
    calltype integer,
    feedcodeid varchar(10),
    rate_id integer,
    location varchar(30),
    totalkb decimal(12,3)
  );

