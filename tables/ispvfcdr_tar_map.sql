drop table if exists "informix".ispvfcdr_tar_map ;
create table "informix".ispvfcdr_tar_map 
  (
    tariff_code varchar(12) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    call_group varchar(250),
    tar_class_code smallint,
    rate_method char(10),
    tariff_code_narr varchar(250),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

