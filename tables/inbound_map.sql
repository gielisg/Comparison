drop table if exists "informix".inbound_map ;
create table "informix".inbound_map 
  (
    aparty varchar(10) not null ,
    inbound_csn varchar(10) not null ,
    bparty varchar(10) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

