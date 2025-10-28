drop table if exists "informix".maximiser_cdr ;
create table "informix".maximiser_cdr 
  (
    nt_file_num integer,
    nt_file_rec_num integer not null ,
    cdr_type char(2),
    timestamp datetime year to second,
    costcentre varchar(64),
    trunkname varchar(64),
    srcname varchar(64),
    srcnumber varchar(64),
    onbehalfof varchar(64),
    destname varchar(64),
    destnumber varchar(64),
    callduration integer,
    connectedtime integer,
    accountname varchar(64),
    accountnumber varchar(64),
    connectedstat smallint,
    origtrunk varchar(64),
    remoteextension varchar(64),
    origcostcentre varchar(64)
  );

