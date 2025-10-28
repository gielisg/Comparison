drop table if exists "informix".stream_cdr_map ;
create table "informix".stream_cdr_map 
  (
    strm_map_ref serial not null ,
    parti_serv_used varchar(200) not null ,
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

