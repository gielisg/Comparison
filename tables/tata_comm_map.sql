drop table if exists "informix".tata_comm_map ;
create table "informix".tata_comm_map 
  (
    tataco_map_ref serial not null ,
    cfc_a_country varchar(100) not null ,
    service_id varchar(100) not null ,
    dest_country varchar(100) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

