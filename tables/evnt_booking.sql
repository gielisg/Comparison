drop table if exists "informix".evnt_booking ;
create table "informix".evnt_booking 
  (
    booking_id integer not null ,
    event_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

