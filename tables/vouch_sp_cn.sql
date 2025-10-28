drop table if exists "informix".vouch_sp_cn ;
create table "informix".vouch_sp_cn 
  (
    voucher_id integer not null ,
    sp_cn_ref integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

