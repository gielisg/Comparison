drop table if exists "informix".arcinv_purge ;
create table "informix".arcinv_purge 
  (
    inv_ref integer not null ,
    bill_period integer not null ,
    purge_flag char(1) 
        default 'N' not null ,
    
    check (purge_flag IN ('Y' ,'N' )) constraint "informix".yes_no
  );

