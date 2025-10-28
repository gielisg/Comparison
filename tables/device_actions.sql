drop table if exists "informix".device_actions ;
create table "informix".device_actions 
  (
    action_id serial not null ,
    name varchar(254) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

