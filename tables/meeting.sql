drop table if exists "informix".meeting ;
create table "informix".meeting 
  (
    meeting_id serial not null ,
    status_id integer not null ,
    type_id integer not null ,
    title varchar(254,40),
    meeting_dt datetime year to minute 
        default current year to minute,
    scheduled_dt datetime year to minute,
    location varchar(254),
    note text,
    access_details varchar(254),
    prev_meeting_id integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

