drop table if exists "informix".meeting_item ;
create table "informix".meeting_item 
  (
    meeting_item_id serial not null ,
    status_id integer,
    meeting_id integer,
    note text,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

