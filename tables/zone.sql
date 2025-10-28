drop table if exists "informix".zone ;
create table "informix".zone 
  (
    zoneid serial not null ,
    zonetypeid integer not null ,
    districtid integer not null ,
    zonenarr varchar(32),
    latitude decimal(10,4),
    longitude decimal(10,4)
  );

