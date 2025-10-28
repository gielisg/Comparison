drop table if exists "informix".evnt_charge ;
create table "informix".evnt_charge 
  (
    event_chg_ref serial not null ,
    event_type char(2),
    event_code char(2),
    srvctypecode char(4),
    chg_code char(4),
    evnt_chg_wefr datetime year to second,
    evnt_chg_weto datetime year to second
  );

