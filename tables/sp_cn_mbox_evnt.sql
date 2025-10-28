drop table if exists "informix".sp_cn_mbox_evnt ;
create table "informix".sp_cn_mbox_evnt 
  (
    sp_cn_mbox_ref integer not null ,
    event_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

