drop table if exists "informix".ntwkcrdtran ;
create table "informix".ntwkcrdtran 
  (
    ntwkcrdtranref serial not null ,
    debtor_code char(10) not null ,
    ntwkcrdsrceid integer,
    ntwkcrdtranstat char(10) not null ,
    ntwkcrdtrandate date not null ,
    ntwkcrdexprdate date not null ,
    ntwkcrdtranamnt decimal(16,4) not null ,
    ntwkcrdopenamnt decimal(16,4),
    ntwkcrdreasid integer,
    ntwcrdtranbillnarr varchar(254),
    ntwkcrdruleid integer,
    sp_cn_ref integer,
    fin_ref integer,
    ntwkcrdcontid integer,
    bill_period integer,
    cycle_code char(2),
    uom varchar(20) 
        default 'CURRENCY',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (ntwkcrdtranstat IN ('OPEN' ,'EXPIRED' ,'HELD' ,'PENDING' ,'CANCELLED' )) 
              constraint "informix".ntwkcrdtranstat1
  );

