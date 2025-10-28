drop table if exists "informix".gslac ;
create table "informix".gslac 
  (
    msloclac integer not null ,
    regioncd char(3) not null ,
    gsgatewaycd char(3) not null 
  );

