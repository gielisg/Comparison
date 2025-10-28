drop table if exists "informix".tap2_moc_mtc_map ;
create table "informix".tap2_moc_mtc_map 
  (
    moc_mtc_map_ref serial not null ,
    nt_cust_num char(10),
    rec_type smallint,
    service_code char(2),
    ss_evnt_actcd_1 char(2),
    ss_evnt_sscd_1 char(2),
    bparty_prefix varchar(64),
    tar_class_code smallint,
    nonau_celloffset integer,
    rate_method char(10),
    msc_id varchar(15),
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    override_desc varchar(64),
    override_bparty varchar(64),
    imsi_prefix varchar(10),
    ge_code char(3),
    dest_network char(6),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

