drop table if exists "informix".sp_cn_in_group ;
create table "informix".sp_cn_in_group 
  (
    debtor_code char(10) not null ,
    group_num smallint not null ,
    start_date char(18) not null ,
    sp_cn_ref integer not null ,
    end_date char(18)
  );

