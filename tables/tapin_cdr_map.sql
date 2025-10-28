drop table if exists "informix".tapin_cdr_map ;
create table "informix".tapin_cdr_map 
  (
    tapin_cdr_map_ref serial not null ,
    msc_id varchar(15),
    rec_type smallint,
    service_code char(2),
    bparty_prefix varchar(64),
    ss_evnt_actcd_1 char(2),
    ss_evnt_sscd_1 char(2),
    dual_serv_code char(2),
    ge_code char(3),
    chain_ref decimal(6,0),
    originating_ntwork varchar(20),
    tar_class_code smallint,
    rate_method char(10),
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    override_desc varchar(64),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

