drop table if exists "informix".api_exception_log ;
create table "informix".api_exception_log 
  (
    apiexlog_id integer not null ,
    dt datetime year to fraction(5) 
        default current year to fraction(5) not null ,
    http_status integer,
    error_num integer,
    error_message varchar(254)
  );

