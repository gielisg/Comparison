drop table if exists "informix".sp_cn_alert ;
create table "informix".sp_cn_alert 
  (
    sp_cn_ref integer not null ,
    alert_amnt decimal(8,2) 
        default 0.00 not null ,
    alert_date date
  );

