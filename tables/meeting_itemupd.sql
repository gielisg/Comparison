drop table if exists "informix".meeting_itemupd ;
create table "informix".meeting_itemupd 
  (
    meet_itmupd_id serial not null ,
    meeting_item_id integer not null ,
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

