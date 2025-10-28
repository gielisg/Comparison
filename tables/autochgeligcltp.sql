drop table if exists "informix".autochgeligcltp ;
create table "informix".autochgeligcltp 
  (
    autochgeligid integer not null ,
    tar_class_code smallint not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

