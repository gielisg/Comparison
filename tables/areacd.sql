drop table if exists "informix".areacd ;
create table "informix".areacd 
  (
    areacdid serial not null ,
    zoneid integer,
    areacdnarr varchar(64) not null ,
    areacdtype char(1) not null ,
    areacdno varchar(32) not null ,
    regioncd char(3),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (areacdtype IN ('t' ,'z' ,'b' )) constraint "informix".area_type5
  );

