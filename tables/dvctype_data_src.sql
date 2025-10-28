drop table if exists "informix".dvctype_data_src ;
create table "informix".dvctype_data_src 
  (
    dvtp_data_src_id serial not null ,
    type_id integer not null ,
    med_datasrce_id integer not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

