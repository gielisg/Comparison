drop table if exists "informix".med_edit_value ;
create table "informix".med_edit_value 
  (
    med_edit_val_id serial not null ,
    med_id integer not null ,
    note varchar(254),
    from_dt datetime year to second,
    to_dt datetime year to second,
    device_id integer,
    raw_value varchar(254,20),
    raw_value2 varchar(254,20),
    med_value decimal(12,3) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

