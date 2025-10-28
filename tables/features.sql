drop table if exists "informix".features ;
create table "informix".features 
  (
    feature_id serial not null ,
    version_ref integer not null ,
    feature lvarchar(2000) not null ,
    url varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

