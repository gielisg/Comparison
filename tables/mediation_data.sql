drop table if exists "informix".mediation_data ;
create table "informix".mediation_data 
  (
    med_id serial not null ,
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    med_datasrce_id integer not null ,
    med_type_id integer not null ,
    med_value decimal(12,3) not null ,
    from_dt datetime year to second,
    to_dt datetime year to second,
    med_status_id integer,
    device_id integer,
    raw_value varchar(254,10),
    orig_device_id varchar(254,10),
    raw_value2 varchar(254,10),
    med_parent_id integer,
    med_stat_reas_id integer,
    med_parent_type char(1),
    estimation_type char(1),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

