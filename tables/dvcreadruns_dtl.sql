drop table if exists "informix".dvcreadruns_dtl ;
create table "informix".dvcreadruns_dtl 
  (
    dtl_id serial not null ,
    run_id integer not null ,
    device_id integer not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second,
    seq_num integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

