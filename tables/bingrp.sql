drop table if exists "informix".bingrp ;
create table "informix".bingrp 
  (
    bingrpid serial not null ,
    bingrpnarr varchar(32) not null ,
    image_url varchar(254,50),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

