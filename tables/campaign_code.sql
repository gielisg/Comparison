drop table if exists "informix".campaign_code ;
create table "informix".campaign_code 
  (
    campaign_code char(4) not null ,
    campaign_narr char(32) not null 
  );

