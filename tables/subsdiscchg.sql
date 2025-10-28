drop table if exists "informix".subsdiscchg ;
create table "informix".subsdiscchg 
  (
    sp_cn_chg_ref integer not null ,
    subsdiscid integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

