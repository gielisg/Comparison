drop table if exists "informix".rangcltp ;
create table "informix".rangcltp 
  (
    distrangid integer not null ,
    tar_class_code smallint not null ,
    distrangwefd datetime year to second not null ,
    distrangwetd datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

