drop table if exists "informix".autochgtran ;
create table "informix".autochgtran 
  (
    sp_cn_chg_ref integer not null ,
    autochgid integer not null ,
    bill_period integer,
    cycle_code char(2),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

