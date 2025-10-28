drop table if exists "informix".tel4g_cdr_map ;
create table "informix".tel4g_cdr_map 
  (
    tel4g_map_ref serial not null ,
    p1_basic_call_type char(2) not null ,
    p2_calltp_calltype char(2) not null ,
    p2_calltp_flw_cltp char(1) not null ,
    p2_cause_forward varchar(5),
    p2_routnum_address varchar(20),
    p2_tariff_sn_pkey varchar(5) not null ,
    p2_tariff_zn_pkey varchar(15) not null ,
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

