drop table if exists "informix".tap3_cdr_map ;
create table "informix".tap3_cdr_map 
  (
    tap3_map_ref serial not null ,
    map_id varchar(20) not null ,
    rec_type smallint,
    service_type varchar(10),
    service_code char(2),
    supplserv_act char(2),
    supplserv_cd char(2),
    bparty_prefix varchar(64),
    aparty_prefix varchar(63),
    home_bid varchar(50),
    originating_ntwork varchar(20),
    imsi_prefix varchar(10),
    tar_class_code smallint,
    rate_method char(10),
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

