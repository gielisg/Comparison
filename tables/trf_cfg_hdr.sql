drop table if exists "informix".trf_cfg_hdr ;
create table "informix".trf_cfg_hdr 
  (
    trf_cfg_ref serial not null ,
    srceplansernum integer,
    srceplancode smallint,
    plan_narr char(32) not null ,
    comment varchar(255),
    rnd_meth_code char(2),
    readroundingprec integer,
    timebase integer 
        default 1 not null ,
    currencybase integer 
        default 1 not null ,
    destplancode integer,
    destplansernum integer,
    startdate date,
    loaded char(1) 
        default 'N' not null ,
    changed char(1) 
        default 'N' not null ,
    visible char(1) 
        default 'Y' not null ,
    plan_type char(4) not null ,
    bulk_apply char(1) 
        default 'N',
    taxid integer 
        default null,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

