drop table if exists "informix".sp_cn_feature ;
create table "informix".sp_cn_feature 
  (
    sp_cn_feature_id serial not null ,
    sp_cn_ref integer,
    feature_id integer,
    from_dt datetime year to second,
    to_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

