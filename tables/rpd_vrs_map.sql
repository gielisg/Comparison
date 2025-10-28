drop table if exists "informix".rpd_vrs_map ;
create table "informix".rpd_vrs_map 
  (
    rpdvrs_map_ref serial not null ,
    trans_type char(3) not null ,
    vrs_status varchar(20) not null ,
    evr_type varchar(50),
    val_amt_min integer,
    val_amt_max integer,
    state char(3),
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    srvctypecode char(4) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

