drop table if exists "informix".nt_cl_notify_sum ;
create table "informix".nt_cl_notify_sum 
  (
    ser serial not null ,
    sp_cn_ref integer,
    srvctypecode char(4),
    bill_period integer,
    from_dt datetime year to second,
    to_dt datetime year to second,
    type char(1),
    quantity decimal(25,10),
    allowance decimal(25,10),
    address char(1) 
        default 'N' not null ,
    status_id integer,
    last_notif_perc decimal(6,2),
    last_notif_dt datetime year to second,
    
    check (address IN ('Y' ,'N' )) constraint "informix".yes_no
  );

