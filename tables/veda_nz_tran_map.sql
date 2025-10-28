drop table if exists "informix".veda_nz_tran_map ;
create table "informix".veda_nz_tran_map 
  (
    veda_nz_tmap_ref serial not null ,
    trans_code char(2) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    rate_method char(10) not null ,
    tar_class_code smallint,
    chg_code char(4),
    fin_type_code char(2),
    gl_acctcode varchar(45),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

