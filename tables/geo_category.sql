drop table if exists "informix".geo_category ;
create table "informix".geo_category 
  (
    geo_cat_code char(2) not null ,
    prnt_cat_code char(2),
    geo_cat_narr varchar(64) not null ,
    level smallint not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

