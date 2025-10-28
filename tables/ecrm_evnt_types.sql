drop table if exists "informix".ecrm_evnt_types ;
create table "informix".ecrm_evnt_types 
  (
    event_type integer not null ,
    event_narr varchar(32) not null 
  );

