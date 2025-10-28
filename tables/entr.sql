drop table if exists "informix".entr ;
create table "informix".entr 
  (
    entrid serial not null ,
    prntentrid integer,
    inv_ref integer not null ,
    sp_cn_ref integer not null ,
    entrtypecd char(2) not null ,
    trantypecd char(1) not null ,
    adjsid integer,
    sp_chg_dtl_ref integer,
    cl_ser_num integer,
    subsdiscid integer,
    entrcrcy char(3) 
        default 'AUD' not null ,
    entrsignamnt decimal(18,10) not null ,
    entrsignamnttax decimal(18,10) not null ,
    entrchgddatm datetime year to second not null ,
    entrbookdatm datetime year to second not null ,
    entrrevn char(1) not null ,
    
    check (entrtypecd != 'TX' ) constraint "informix".no_tx
  );

