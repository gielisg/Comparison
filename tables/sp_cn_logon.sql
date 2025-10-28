drop table if exists "informix".sp_cn_logon ;
create table "informix".sp_cn_logon 
  (
    sp_cn_ref integer not null ,
    dt_attempted datetime year to second 
        default current year to second not null ,
    passwd_used char(10),
    success char(1) 
        default 'N' not null ,
    access_denied char(1) 
        default 'N' not null ,
    
    check (success IN ('Y' ,'N' )) constraint "informix".yes_no
  );

