drop table if exists "informix".book_slot ;
create table "informix".book_slot 
  (
    book_slot_id serial not null ,
    booking_id integer not null ,
    slot_type_id integer not null ,
    cost decimal(16) not null ,
    date date not null ,
    element_id integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

