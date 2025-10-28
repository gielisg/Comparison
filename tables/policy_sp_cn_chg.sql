drop table if exists "informix".policy_sp_cn_chg ;
create table "informix".policy_sp_cn_chg 
  (
    policy_id integer not null ,
    sp_cn_chg_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

