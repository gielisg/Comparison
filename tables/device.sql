drop table if exists "informix".device ;
create table "informix".device 
  (
    deviceid serial not null ,
    devicelabl char(20),
    devicemetr char(1) not null ,
    dvcetypeid integer not null ,
    equipment_id integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

