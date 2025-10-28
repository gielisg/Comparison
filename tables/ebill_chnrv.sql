drop table if exists "informix".ebill_chnrv ;
create table "informix".ebill_chnrv 
  (
    ntwtransid integer not null ,
    churnrv_id decimal(9,0) not null ,
    orig_churn_id decimal(9,0) not null ,
    service_num char(17) not null 
  );

