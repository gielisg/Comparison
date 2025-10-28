drop table if exists "informix".geo_type ;
create table "informix".geo_type 
  (
    geo_type_code char(2) not null ,
    geo_type_narr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

