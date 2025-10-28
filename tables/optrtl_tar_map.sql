drop table if exists "informix".optrtl_tar_map ;
create table "informix".optrtl_tar_map 
  (
    rule_order integer not null ,
    map_wefr datetime year to second 
        default current year to second not null ,
    map_weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    rule_narrative varchar(64) not null ,
    a_party varchar(20),
    b_party varchar(20),
    section_code char(2),
    zone_flg char(2),
    type_code char(5),
    plan_desc varchar(15),
    b_party_narr varchar(20),
    unit char(1),
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

