drop table if exists "informix".book_book_elems ;
create table "informix".book_book_elems 
  (
    booking_id integer not null ,
    element_id integer not null ,
    cost decimal(8,3),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

