drop table if exists "informix".adj_chg ;
create table "informix".adj_chg 
  (
    adj_item_ref integer not null ,
    sp_chg_dtl_ref integer not null ,
    amnt_ex decimal(12,6) 
        default 0.000000 not null ,
    amnt_tax decimal(12,6) 
        default 0.000000 not null 
  );

