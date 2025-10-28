drop table if exists "informix".dvc_read_runs ;
create table "informix".dvc_read_runs 
  (
    run_id serial not null ,
    name varchar(254),
    available_from_dt datetime year to second 
        default current year to second not null ,
    available_to_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

