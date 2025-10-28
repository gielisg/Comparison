drop table if exists "informix".med_data_cons ;
create table "informix".med_data_cons 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    orig_device_id varchar(254,10) not null ,
    med_type_id integer not null ,
    med_value decimal(12,3),
    from_dt datetime year to second not null ,
    to_dt datetime year to second not null 
  );

