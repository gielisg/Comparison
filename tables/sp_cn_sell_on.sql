drop table if exists "informix".sp_cn_sell_on ;
create table "informix".sp_cn_sell_on 
  (
    sp_cn_ref integer not null ,
    prev_sp_cn_ref integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

