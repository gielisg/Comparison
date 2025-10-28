drop table if exists "informix".cont_sta_cont ;
create table "informix".cont_sta_cont 
  (
    contact_code char(10) not null ,
    cont_status char(3) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    event_ref integer,
    updated_by varchar(18,10) 
        default user not null 
  );

