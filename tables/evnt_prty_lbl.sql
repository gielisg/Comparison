drop table if exists "informix".evnt_prty_lbl ;
create table "informix".evnt_prty_lbl 
  (
    priority_id integer not null ,
    priority_narr varchar(32,10) not null ,
    display char(1) not null ,
    display_ord integer,
    default char(1),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

