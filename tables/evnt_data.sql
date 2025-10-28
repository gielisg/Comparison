drop table if exists "informix".evnt_data ;
create table "informix".evnt_data 
  (
    event_ref integer not null ,
    attribute_name varchar(32) not null ,
    attribute_value varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

