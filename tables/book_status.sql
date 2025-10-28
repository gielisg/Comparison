drop table if exists "informix".book_status ;
create table "informix".book_status 
  (
    status_id integer not null ,
    status_narr varchar(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

