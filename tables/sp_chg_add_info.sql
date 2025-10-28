drop table if exists "informix".sp_chg_add_info ;
create table "informix".sp_chg_add_info 
  (
    sp_cn_chg_ref integer not null ,
    info_type char(3) not null ,
    
    check (info_type = 'DIS' ) constraint "informix".info_type13
  );

