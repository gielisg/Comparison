drop table if exists "informix".device_cat ;
create table "informix".device_cat 
  (
    cat_id serial not null ,
    cat_narr varchar(254,32) not null ,
    note lvarchar(10000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

