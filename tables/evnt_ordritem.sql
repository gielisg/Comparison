drop table if exists "informix".evnt_ordritem ;
create table "informix".evnt_ordritem 
  (
    event_ref integer not null ,
    ordritemid integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

