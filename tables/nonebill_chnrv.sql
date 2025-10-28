drop table if exists "informix".nonebill_chnrv ;
create table "informix".nonebill_chnrv 
  (
    ntwtransid integer not null ,
    churnrv_id decimal(9,0),
    orig_churn_id decimal(9,0),
    service_num varchar(18)
  );

