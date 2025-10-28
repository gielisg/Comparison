drop table if exists "informix".booking_elements ;
create table "informix".booking_elements 
  (
    element_id integer not null ,
    element_narr varchar(254) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

