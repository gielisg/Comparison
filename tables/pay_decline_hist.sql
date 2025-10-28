drop table if exists "informix".pay_decline_hist ;
create table "informix".pay_decline_hist 
  (
    fin_ref integer 
        default 0 not null ,
    decline_fee_id integer not null ,
    sp_cn_chg_ref integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

