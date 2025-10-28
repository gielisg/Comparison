drop table if exists "informix".contcodehist ;
create table "informix".contcodehist 
  (
    old_contact_code char(10) not null ,
    new_contact_code char(10) not null ,
    change_dt datetime year to second 
        default current year to second not null ,
    event_ref integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

