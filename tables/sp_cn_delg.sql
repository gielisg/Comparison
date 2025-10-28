drop table if exists "informix".sp_cn_delg ;
create table "informix".sp_cn_delg 
  (
    sp_cn_delg_ref serial not null ,
    debtor_code char(10) not null ,
    sp_cn_ref integer,
    reason_id integer,
    delg_wef date 
        default today not null ,
    delg_wet date,
    delg_narr varchar(50),
    delg_passwd varchar(18)
  );

