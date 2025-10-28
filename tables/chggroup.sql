drop table if exists "informix".chggroup ;
create table "informix".chggroup 
  (
    chggroupid integer not null ,
    chggroupprid integer,
    chggroupnarr varchar(254,10) not null ,
    chggroupordr integer not null ,
    sp_chggrp_code varchar(64),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

