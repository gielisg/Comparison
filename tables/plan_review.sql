drop table if exists "informix".plan_review ;
create table "informix".plan_review 
  (
    sp_cn_ref integer not null ,
    review_num smallint not null ,
    review_reas_code char(2) not null ,
    review_stat char(4),
    review_stat_tm datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

