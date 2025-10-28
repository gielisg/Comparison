drop table if exists "informix".time_interval ;
create table "informix".time_interval 
  (
    interval_id serial not null ,
    from_dt datetime year to minute not null ,
    num_minutes integer 
        default 15 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

