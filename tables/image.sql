drop table if exists "informix".image ;
create table "informix".image 
  (
    imageid serial not null ,
    name varchar(254,30),
    image lvarchar(31000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

