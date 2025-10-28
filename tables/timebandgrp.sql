drop table if exists "informix".timebandgrp ;
create table "informix".timebandgrp 
  (
    timebandgrpcode char(4) not null ,
    timebandgrpnarr varchar(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

