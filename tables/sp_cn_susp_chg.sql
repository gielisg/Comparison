drop table if exists "informix".sp_cn_susp_chg ;
create table "informix".sp_cn_susp_chg 
  (
    sp_cn_susp_ref integer not null ,
    existing_chg_ref integer not null ,
    contra_chg_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

