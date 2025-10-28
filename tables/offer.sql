drop table if exists "informix".offer ;
create table "informix".offer 
  (
    review_num smallint not null ,
    offer_num smallint not null ,
    sp_cn_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

