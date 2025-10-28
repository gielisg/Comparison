drop table if exists "informix".timeband ;
create table "informix".timeband 
  (
    timebandcode char(4) not null ,
    timebandnarr varchar(32) not null ,
    timebandgrpcode char(4) not null ,
    timebandbillnarr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

