drop table if exists "informix".region ;
create table "informix".region 
  (
    regioncd char(3) not null ,
    regionnarr varchar(32,1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

