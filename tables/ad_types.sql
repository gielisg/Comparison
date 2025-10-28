drop table if exists "informix".ad_types ;
create table "informix".ad_types 
  (
    ad_type_id char(2) not null ,
    ad_type_narr varchar(32) not null 
  );

