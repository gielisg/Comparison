drop table if exists "informix".callback_responses ;
create table "informix".callback_responses 
  (
    id serial not null ,
    event_ref integer,
    reference varchar(80,20) not null ,
    status char(20) 
        default 'Open' not null ,
    source varchar(254) not null ,
    response lvarchar(31000),
    note lvarchar(500),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (status IN ('Open' ,'Completed' ,'Failed' ,'Cancelled' )) constraint "informix".status_callbackres
  );

