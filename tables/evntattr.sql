drop table if exists "informix".evntattr ;
create table "informix".evntattr 
  (
    evntattrid serial not null ,
    evntatttypeid integer not null ,
    event_ref integer,
    contact_code char(10),
    sp_cn_ref integer,
    attribvalue varchar(254) not null 
  );

