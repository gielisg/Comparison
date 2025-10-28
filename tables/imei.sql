drop table if exists "informix".imei ;
create table "informix".imei 
  (
    imei_ser_num serial not null ,
    imei char(15) not null 
  );

