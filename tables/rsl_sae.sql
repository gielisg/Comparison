drop table if exists "informix".rsl_sae ;
create table "informix".rsl_sae 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    eventid char(30),
    rectype char(1),
    chgdate date,
    chgparty char(20),
    currency char(10),
    ntcost decimal(12,4),
    planid char(10),
    calltype char(1),
    datestart date,
    dateend date,
    description varchar(60),
    numitems integer,
    carrierid char(1)
  );

