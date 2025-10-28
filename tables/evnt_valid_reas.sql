drop table if exists "informix".evnt_valid_reas ;
create table "informix".evnt_valid_reas 
  (
    evnt_reas_id serial not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    evnt_reas_code char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

