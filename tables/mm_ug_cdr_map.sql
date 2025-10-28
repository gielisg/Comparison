drop table if exists "informix".mm_ug_cdr_map ;
create table "informix".mm_ug_cdr_map 
  (
    cdr_map_ref serial not null ,
    event lvarchar(500),
    dr_msg_status varchar(20),
    delivery_rct_req varchar(10),
    message_type varchar(2),
    traffic_class varchar(20),
    act_country_code varchar(2),
    destaddr_country varchar(2),
    provider_id varchar(36),
    service_type varchar(20),
    source varchar(255),
    map_wefr datetime year to second 
        default current year to second not null ,
    map_weto datetime year to second,
    tar_class_code smallint,
    rate_method varchar(16),
    override_desc varchar(255),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

