drop table if exists "informix".device_grps_cont ;
create table "informix".device_grps_cont 
  (
    group_id integer not null ,
    contact_code char(10) not null ,
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

