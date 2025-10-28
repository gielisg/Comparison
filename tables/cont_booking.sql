drop table if exists "informix".cont_booking ;
create table "informix".cont_booking 
  (
    contact_code char(10) not null ,
    booking_id integer not null ,
    cbook_reln_code char(4),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

